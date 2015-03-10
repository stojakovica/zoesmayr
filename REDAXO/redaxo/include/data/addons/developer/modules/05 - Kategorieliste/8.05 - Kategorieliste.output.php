<?php
$curArt = OOArticle::getArticleById($this->article_id);
$parentCategory = $curArt->getCategory();
foreach ($parentCategory->getChildren(true) as $c) {
    $name = $c->getName();
    $url = seo42::getFullUrl($c->getId());
    $teaserText = $c->getValue('art_teaser_text');
    $teaserImage = $c->getValue('art_teaser_image');
    ?>
    <div class="row">
        <div class="col-sm-4">
            <img src="<?php echo seo42::getImageManagerFile($teaserImage, 'bootstrap-4'); ?>" class="img-responsive"/>
        </div>
        <div class="col-sm-8">
            <h2><?php echo $name; ?></h2>
            <p><?php echo $teaserText; ?></p>
            <a href="<?php echo $url; ?>">###more###</a>
        </div>
    </div>
<?php
}
?>
