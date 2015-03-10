<?php
header('Content-Type: text/html; charset=utf-8');
$ssa = OOArticle::getSiteStartArticle();
$article = OOArticle::getArticleById($this->getValue('article_id'));
$cssFiles = array();
$cssFiles[] = "main.less";

$isSsa = $article->getId() == $ssa->getId();

$headerImages = array_filter(explode(",", getHierarchicalVar("art_header_images", $article, $ssa)));

$contact = OOArticle::getArticleById(5);
$jobOffer = OOArticle::getArticleById(6);
$aboutUs = OOArticle::getArticleById(7);
$imprint = OOArticle::getArticleById(8);
?>
<!DOCTYPE html>
<html lang="<?php echo seo42::getLangCode(); ?>" xmlns:fb="http://ogp.me/ns/fb#">
<head>
    <meta charset="utf-8" />
    <base href="<?php echo seo42::getBaseUrl(); ?>" />
    <title><?php echo seo42::getTitle(); ?></title>
    <meta name="description" content="<?php echo seo42::getDescription(); ?>" />
    <meta name="keywords" content="<?php echo seo42::getKeywords(); ?>" />
    <meta name="robots" content="<?php echo seo42::getRobotRules();?>" />
    <link rel="canonical" href="<?php echo seo42::getCanonicalUrl(); ?>" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="lib/bootstrap-3.3.2/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="lib/lightbox/css/lightbox.css" rel="stylesheet" type="text/css" media="screen" />
    <link href='lib/font-awesome/css/font-awesome.min.css' rel='stylesheet' type='text/css'>
    <link href='lib/jquery-focuspoint/css/focuspoint.css' rel='stylesheet' type='text/css'>
    <link href="<?php echo seo42::getCombinedCSSFile("project.css", $cssFiles); ?>" rel="stylesheet">
    <!--[if lt IE 9]>
    <script type="text/javascript" src="<?php echo seo42::getJSFile("//cdn.jsdelivr.net/html5shiv/3.7.2/html5shiv.min.js"); ?>"></script>
    <script type="text/javascript" src="<?php echo seo42::getJSFile("//cdn.jsdelivr.net/respond/1.4.2/respond.min.js"); ?>"></script>
    <![endif]-->
    <?php echo seo42::getLangTags(); ?>
</head>
<body style="background: url(<?php echo seo42::getImageFile("muster.png"); ?>);">
    <?php if($headerImages) { ?>
        <div id="headerCarousel" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner" role="listbox">
                <?php foreach($headerImages as $h) {
                    $imageObj = OOMedia::getMediaByFileName($h);
                    $focusx = $imageObj->getValue('med_focus_x')==""?0:$imageObj->getValue('med_focus_x');
                    $focusy = $imageObj->getValue('med_focus_y')==""?0:$imageObj->getValue('med_focus_y');
                    ?>
                    <div class="item focuspoint" data-focus-x="<?php echo $focusx; ?>"
                         data-focus-y="<?php echo $focusy; ?>"
                         data-image-w="1500"
                         data-image-h="600">
                        <img src="<?php echo seo42::getImageManagerFile($h, 'headerImage'); ?>" alt="">
                        <div class="container">
                            <div class="carousel-caption">
                                <?php if($imageObj->getTitle()) { ?>
                                    <h2><?php echo $imageObj->getTitle(); ?></h2>
                                <?php }
                                echo convertTextile($imageObj->getValue('med_description')); ?>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>

            <div class="scrollToContent"><i class="fa fa-angle-down"></i></div>
        </div>
    <?php } ?>

    <div class="navMain clearfix text-center">
        <?php
        $nav = new nav42();
        $nav->setLevelDepth(4);
        $nav->setShowAll(true);
        $nav->setUlClass('clearfix');
        echo $nav->getNavigationByLevel(0);
        ?>
    </div>

    <div class="navToggle visible-xs visible-sm">
        <i class="fa fa-navicon"></i>
    </div>

    <div class="containerContent">
        <?php echo $this->getArticle(); ?>
    </div>

    <div class="footerMargin"></div>
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <?php echo $contact->toLink(); ?><br>
                    <?php echo $aboutUs->toLink(); ?>
                </div>
                <div class="col-md-3">
                    <?php echo $jobOffer->toLink(); ?><br>
                    <?php echo $imprint->toLink(); ?>
                </div>
                <div class="col-md-6">
                    logo
                </div>
            </div>
        </div>
    </footer>

    <script src="lib/jquery/jquery-1.11.2.min.js"></script>
    <script src="lib/bootstrap-3.3.2/js/bootstrap.min.js"></script>
    <script src="lib/lightbox/js/lightbox.min.js"></script>
    <script src="lib/jquery-focuspoint/js/jquery.focuspoint.min.js"></script>
    <script src="<?php echo seo42::getJSFile('jquery.stellar.min.js'); ?>"></script>
    <script src="<?php echo seo42::getJSFile('main.js'); ?>"></script>
    <link rel="shortcut icon" href="<?php echo seo42::getImageFile("favicon.ico"); ?>" type="image/x-icon" />
</body>
</html>