<?php
if (!function_exists('truncate')) {
    function truncate($string, $length = 80, $etc = '...', $break_words = false) {
        if ($length == 0) {
            return '';
        }
        if (strlen($string) > $length) {
            $length -= strlen($etc);
            if (!$break_words) {
                $string = preg_replace('/\s+?(\S+)?$/', '', substr($string, 0, $length + 1));
            }
            return substr($string, 0, $length) . $etc;
        } else {
            return $string;
        }
    }
}

if (!function_exists('ModulPrintCatList')) {
    function ModulPrintCatList($categories, $printArticles, $printStartArticles, $showText) {
        $TEXT_LENGTH = 150;
        if (is_array($categories) && count($categories) > 0) {
            echo '<ul class="sitemap">';
            foreach ($categories as $cat) {
                if ($cat->isOnline()) {
                    echo '<li><a href="' . $cat->getURL() . '">' . $cat->getName() . '</a>';
                    if (($showText && !$printArticles) || ($showText && $printArticles && !$printStartArticles)) {
                        //Anzeige des Startartikels (wenn online)
                        $art = $cat->getStartArticle();
                        if ($art->isOnline()) {
                            $article = new article();
                            $article->setArticleId($art->getId());
                            $articleText = truncate(strip_tags($article->getArticle()), $TEXT_LENGTH);
                            echo '<span style="font-style:normal; font-size:0.8em;">' . $articleText . '</span>';
                        }
                    }
                    if ($printArticles) {
                        $articles = $cat->getArticles();
                        if (is_array($articles) && count($articles) > 0) {
                            $tmp_str = '';
                            foreach ($articles as $art) {
                                if (($art->isOnline() && !$art->isStartArticle()) || ($art->isOnline() && $printStartArticles)) {
                                    $tmp_str .= '<li><a href="' . $art->getURL() . '">' . $art->getName() . '</a>';
                                    if ($showText) {
                                        $article = new article();
                                        $article->setArticleId($art->getId());
                                        $articleText = truncate(strip_tags($article->getArticle()), $TEXT_LENGTH);
                                        $tmp_str .= '<span style="margin: 15px 0 15px 0; font-style:normal; font-size:0.8em;">' . $articleText . '</span>';
                                    }
                                    $tmp_str .= '</li>';
                                }
                            }
                            if ($tmp_str != '') {
                                echo '<ul style="list-style-type:none; font-style:italic; margin-bottom:1em;">';
                                echo $tmp_str;
                                echo '</ul>';
                            }
                        }
                    }
                    ModulPrintCatList($cat->getChildren(), $printArticles, $printStartArticles, $showText);
                    echo '</li>';
                }
            }
            echo '</ul>';
        }
    }
}
// START Root Categories //
$categories = OOCategory::getRootCategories();
if (is_array($categories) && count($categories) > 0) {
    ModulPrintCatList($categories,
        ("REX_VALUE[1]" == "show_articles"),
        ("REX_VALUE[2]" == "start_articles"),
        ("REX_VALUE[3]" == "show_text"));
}
?>
