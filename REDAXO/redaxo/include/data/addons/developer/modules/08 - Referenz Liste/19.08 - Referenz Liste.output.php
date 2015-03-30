<?php
$referenzen = array();

$qry = 'SELECT * FROM referenzen WHERE 1=1';
$sql = new sql();
$result = $sql->get_array($qry);
foreach($result as $row) {
    $referenzen[$row['id']]['main_image'] = $row['main_image'];
    $referenzen[$row['id']]['title'] = $row['title'];
    $referenzen[$row['id']]['description'] = $row['description'];
    $referenzen[$row['id']]['gallery'] = $row['gallery'];
}

if(!$REX['REDAXO']) {
    ?>
    <div class="row referenzenList">
    <?php
    foreach($referenzen as $id => $ref) {
        ?>
        <div class="col-sm-4">
            <div class="item">
                <img src="<?php echo seo42::getImageManagerFile($ref['main_image'], 'tileList'); ?>" class="img-responsive">

                <div class="descriptionWrapper">
                    <div class="descriptionContainer">
                        <div class="description">
                            <?php echo $ref['title']; ?>
                        </div>
                    </div>
                </div>

                <a href="<?php echo rex_getUrl(10, '', array('id' => $id)); ?>"></a>
            </div>
        </div>
        <?php
    }
    ?>
    </div>
    <?php
}
?>