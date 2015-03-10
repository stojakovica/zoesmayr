<?php
$image = "REX_FILE[1]";
$description = convertTextile("REX_VALUE[1]");
?>
<div class="row">
    <div class="col-sm-4">
        <img src="<?php echo seo42::getImageManagerFile($image, "bootstrap-4"); ?>" class="img-responsive" />
    </div>
    <div class="col-sm-8">
        <?php echo $description; ?>
    </div>
</div>