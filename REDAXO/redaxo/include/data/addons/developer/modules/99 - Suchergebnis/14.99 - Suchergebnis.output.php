<?php
if (!empty($_REQUEST['rexsearch'])) {
    $rexsearch = new RexSearch();
    $result = $rexsearch->search($_REQUEST['rexsearch']);

    if ($result['count'] > 0) {
        echo '<ul class="searchresults">';
        foreach ($result['hits'] as $hit) {
            if ($hit['type'] == 'article') {
                $article = OOArticle::getArticleById($hit['fid']);
                echo '<li>';
                echo '<strong><a href="' . ($url = htmlspecialchars($article->getUrl())) . '">' . $article->getName() . '</a></strong>';
                echo '<p>' . $hit['highlightedtext'] . '</p>';
                echo '<p>' . $REX['SERVER'] . rex_getUrl($hit['fid'], $hit['clang']) . '</p>';
                echo '</li>';
            }
        }
        echo '</ul>';
    }
}
?>