<?php
if(!$REX['REDAXO']) {
    $id = $_GET['id'];

    if(!$id) {
        header('Location: '. seo42::getFullUrl(3));
        exit;
    }

    $referenz = array();

    $qry = 'SELECT * FROM referenzen WHERE id='.$id.' limit 1';
    $sql = new sql();
    $result = $sql->get_array($qry);
    foreach($result as $row) {
        $referenz['main_image'] = $row['main_image'];
        $referenz['title'] = $row['title'];
        $referenz['description'] = convertTextile($row['description']);
        $referenz['gallery'] = explode(',', $row['gallery']);
    }

    ?>
    <div class="referenzDetail">
        <div class="row">
            <div class="col-xs-10">
                <h1><?php echo $referenz['title']; ?></h1>
            </div>
            <div class="col-xs-2 overviewLink text-right">
                <a href="<?php echo seo42::getFullUrl(3); ?>">&raquo; Übersicht</a>
            </div>
        </div>

        <?php if($referenz['main_image']) { ?>
        <img src="<?php echo seo42::getImageManagerFile($referenz['main_image'], "bootstrap-12"); ?>" class="img-responsive center-block" />
        <br>
        <?php } ?>

        <?php echo $referenz['description']; ?>
        <br>

        <?php if($referenz['gallery']) { ?>
        <div class="row">
            <?php
            foreach ($referenz['gallery'] as $i) {
                ?>
                <div class="col-md-3 col-sm-4 col-xs-6 gallery">
                    <a data-lightbox="lightbox-ref<?php echo $id; ?>" href="<?php echo seo42::getImageManagerFile($i, 'lightbox'); ?>">
                        <img src="<?php echo seo42::getImageManagerFile($i, 'bootstrap-3'); ?>" class="img-responsive" />
                    </a>
                </div>
            <?php
            }
            ?>
        </div>
        <?php } ?>
    </div>
<?php
}
?>