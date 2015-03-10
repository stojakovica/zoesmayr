<?php
if ("REX_VALUE[1]" == "show_articles") {
    $checked1 = "checked=\"checked\"";
} else {
    $checked1 = "";
};
if ("REX_VALUE[2]" == "start_articles") {
    $checked2 = "checked=\"checked\"";
} else {
    $checked2 = "";
};
if ("REX_VALUE[3]" == "show_text") {
    $checked3 = "checked=\"checked\"";
} else {
    $checked3 = "";
};
?>
<h1>Liste aller Kategorien</h1>
<br>
<input type="checkbox" name="VALUE[3]" value="show_text" <?php echo $checked3; ?> />
<strong>&nbsp;&nbsp;Kurzen Textauszug anzeigen</strong>
<br>
<input type="checkbox" name="VALUE[1]" value="show_articles" <?php echo $checked1; ?> />
<strong>&nbsp;&nbsp;Zugehörige Artikel ausgeben</strong>
<br>
<input type="checkbox" name="VALUE[2]" value="start_articles" <?php echo $checked2; ?> />
<strong>&nbsp;&nbsp;Startartikel mit anzeigen (Wenn Artikelausgabe aktiviert)</strong>
