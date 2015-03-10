<?php
$curArt = OOArticle::getArticleById($this->article_id);
$parentCategory = $curArt->getCategory();
foreach ($parentCategory->getArticles(true) as $a) {
    $name = $a->getName();
    $url = seo42::getFullUrl($a->getId());
    $teaserText = $a->getValue('art_teaser_text');
    $teaserImage = $a->getValue('art_teaser_image');
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