<?php
$description = "REX_VALUE[1]";

$list = array();
foreach(explode("\n", $description) as $k => $item) {
    $listItem = explode('|', $item);
    $list[$k]['icon'] = $listItem[0];
    $list[$k]['text'] = $listItem[1];
}

foreach($list as $item) {
    ?>
    <div class="leistungen">
        <div class="col-sm-1 year">
            <img src="<?php echo seo42::getMediaFile($item['icon'].'.png'); ?>" />
        </div>
        <div class="col-sm-10 col-lg-11">
            <?php echo convertTextile($item['text']); ?>
        </div>
    </div>
<?php
}
?>