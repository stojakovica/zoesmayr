$(document).ready(function(){
    $('#headerCarousel .carousel-inner').children('.item').first().addClass('active');
    $('#headerCarousel .carousel-indicators').children('li').first().addClass('active');
    $('.focuspoint').focusPoint();

    $('.referenzenList .item').hover(showDesc, hideDesc);
});

function showDesc() {
    $(this).children('.descriptionWrapper').fadeIn();
}

function hideDesc() {
    $(this).children('.descriptionWrapper').fadeOut();
}