<div class="container">
    <?php
    $error = false;
    $success = false;

    function encrypt($string, $key) {
        $result = '';
        for($i=0; $i<strlen($string); $i++) {
            $char = substr($string, $i, 1);
            $keychar = substr($key, ($i % strlen($key))-1, 1);
            $char = chr(ord($char)+ord($keychar));
            $result.=$char;
        }
        return base64_encode($result);
    }

    if($_POST['send']) {
        $sicherheits_eingabe = encrypt($_POST["captcha"], "asflh678sfjh");
        $sicherheits_eingabe = str_replace("=", "", $sicherheits_eingabe);

        if(!$_POST['name'] || !$_POST['email'] || !$_POST['comment']) {
            $error = 'Bitte f&uuml;llen Sie alle, mit einem * gekennzeichneten Felder aus!<br/>';
        }
        elseif(!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
            $error = 'Geben Sie bitte eine korrekte E-Mail-Adresse an!<br/>';
        }
//        elseif(!isset($_SESSION['rechen_captcha_spam']) || $sicherheits_eingabe != $_SESSION['rechen_captcha_spam']){
//            $error = 'Der eingegebene Captcha Code war nicht korrekt!<br/>';
//        }
        else {
//            unset($_SESSION['rechen_captcha_spam']);
            $sql = new sql();
            $sql->setTable('guestbook');
            $sql->setValue('name', $_POST['name']);
            $sql->setValue('email', $_POST['email']);
            $sql->setValue('homepage', $_POST['homepage']);
            $sql->setValue('fromOrigin', $_POST['fromOrigin']);
            $sql->setValue('comment', $_POST['comment']);
            $sql->setValue('status', 'offline');
            if($sql->insert()){
                $text = "Es liegt ein neuer G&auml;stebucheintrag vor. Bitte freigeben!";
                $mail = new rex_mailer();
                $mail->SetFrom($_POST['email']);
                $mail->Subject = "Stablalm - Neuer Gästebucheintrag";
                $mail->Body    = nl2br($text);
                $mail->AltBody = $text;
                $mail->AddAddress("ernstginther@stablalm.at");
                $mail->Send();
                unset($_POST);
                $success = 'Der Eintrag wurde erfolgreich abgeschickt! Dieser wird nach Freigabe im Gästebuch erscheinen.<br/>';
            }else{
                $error = 'Fehler beim einf&uuml;gen<br/>';
            }
        }
    }
    if ($error) {
        echo '<div class="alert alert-danger" role="alert">'.$error.'</div>';
    }
    if ($success) {
        echo '<div class="alert alert-success" role="alert">'.$success.'</div>';
    }
    ?>
        <div class="blogFormular">
            <h3>Geben Sie einen Eintrag im Gästebuch ab!</h3>
            <br/>
            <form method="post" class="form-horizontal">
                <div class="form-group">
                    <label class="col-sm-2 control-label required" for="name">Name</label>
                    <div class="col-sm-10">
                        <input class="form-control" type="text" name="name" id="name" value="<?php echo $_POST['name']; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label required" for="email">E-Mail</label>
                    <div class="col-sm-10">
                        <input class="form-control" type="text" name="email" value="<?php echo $_POST['email']; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="homepage">Homepage</label>
                    <div class="col-sm-10">
                        <input class="form-control" type="text" name="homepage" value="<?php echo $_POST['homepage']; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="fromOrigin">Herkunft</label>
                    <div class="col-sm-10">
                        <input class="form-control" type="text" name="fromOrigin" value="<?php echo $_POST['fromOrigin']; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label required" for="kommentar">Kommentar</label>
                    <div class="col-sm-10">
                        <textarea class="form-control" name="comment" id="kommentar" style="height: 150px;"><?php echo $_POST['comment']; ?></textarea>
                    </div>
                </div>
<!--                <div class="form-group">-->
<!--                    <label class="col-sm-2 control-label required" for="captcha">Captcha</label>-->
<!--                    <div class="col-sm-3">-->
<!--                        <img src="--><?php //echo seo42::getFullUrl(268); ?><!--" />-->
<!--                    </div>-->
<!--                    <div class="col-sm-7">-->
<!--                        <input class="form-control" type="text" name="captcha" value="">-->
<!--                    </div>-->
<!--                </div>-->
                <div class="form-group">
                    <div class="col-sm-12 text-right">
                        <input type="submit" name="send" class="btn btn-primary" value="Senden" /></button>
                    </div>
                </div>
            </form>
        </div>
    <?php
    $qry = 'SELECT * FROM guestbook WHERE status!=\'offline\' ORDER BY id DESC';
    $sql2 = new sql();
    $sql2->setQuery($qry);
    $entries = array();
    for($i = 0; $i < $sql2->getRows(); $i++) {
        $entries[$i]['id'] = $sql2->getValue('id');
        $entries[$i]['name'] = $sql2->getValue('name');
        $entries[$i]['email'] = $sql2->getValue('email');
        $entries[$i]['fromOrigin'] = $sql2->getValue('fromOrigin');
        $entries[$i]['homepage'] = $sql2->getValue('homepage');
        $entries[$i]['comment'] = $sql2->getValue('comment');
        $entries[$i]['status'] = $sql2->getValue('status');
        $sql2->next();
    }

    if(count($entries) > 0) {
        $pages = array_chunk($entries, 5);
        $page = $pages[0];
        if ($_GET['page']) {
            $page = $pages[$_GET['page']];
        }
        if (is_array($page)) {
            ?>
            <div class="blogEintragListe">
                <h3>Eintr&auml;ge</h3>
                <?php foreach ($page as $entry) { ?>
                    <div class="blogEintrag">
                        <h5><?php echo $entry['name']; ?></h5>

                        <p><?php echo $entry['comment']; ?></p>
                    </div>
                <?php
                }
                ?>
            </div>
        <?php
        }
        if (count($pages) > 1) {
            echo '<div class="paging">';
            $page = 0;
            if ($_GET['page']) {
                $page = $_GET['page'];
            }
            if ($_GET['page'] > 0) {
                ?>
                <div class="more zurueck"><a
                        href="<?php echo rex_getUrl($this->article_id); ?>?page=<?php echo $page - 1; ?>">&laquo; zur&uuml;ck</a>
                </div>
            <?php
            }
            ?>
            <div class="more pageOf">Seite <?php echo $page + 1; ?> von <?php echo count($pages); ?></div>
            <?php
            if ($_GET['page'] < count($pages) - 1) {
                ?>
                <div class="more weiter"><a
                        href="<?php echo rex_getUrl($this->article_id); ?>?page=<?php echo $page + 1; ?>">weiter &raquo;</a>
                </div>
            <?php
            }
            echo '</div>';
        }
    }
    else {
        echo '<h2>Es sind noch keine Einträge vorhanden. Seien Sie der/die Erste!</h2>';
    }
    ?>
</div>