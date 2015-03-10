<?php
$image1 = "REX_FILE[1]";
$image2 = "REX_FILE[2]";
?>
<div class="container">
    <div class="row">
        <div class="col-sm-6">
            <a data-lightbox="lightbox" href="<?php echo seo42::getImageManagerFile($image1, "lightbox"); ?>">
                <img src="<?php echo seo42::getImageManagerFile($image1, "bootstrap-6"); ?>" class="img-responsive" />
            </a>
        </div>
        <div class="col-sm-6">
            <a data-lightbox="lightbox" href="<?php echo seo42::getImageManagerFile($image2, "lightbox"); ?>">
                <img src="<?php echo seo42::getImageManagerFile($image2, "bootstrap-6"); ?>" class="img-responsive" />
            </a>
        </div>
    </div>
</div>