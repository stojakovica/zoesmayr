<?php
$description = "REX_VALUE[1]";

$list = array();
foreach(explode("\n", $description) as $k => $item) {
    $listItem = explode('|', $item);
    $list[$k]['year'] = $listItem[0];
    $list[$k]['text'] = $listItem[1];
}

foreach($list as $item) {
    ?>
    <div class="about">
        <div class="col-sm-2 col-lg-1 year">
            <span><?php echo $item['year']; ?></span>
        </div>
        <div class="col-sm-10 col-lg-11">
            <?php echo convertTextile($item['text']); ?>
        </div>
    </div>
    <?php
}
?>