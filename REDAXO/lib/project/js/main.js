$(document).ready(function(){
    $('#headerCarousel .carousel-inner').children('.item').first().addClass('active');
    $('#headerCarousel .carousel-indicators').children('li').first().addClass('active');
    $('.focuspoint').focusPoint();

    $('.scrollToContent i').click(scrollToContent);

    if($(window).width() > 750) {
        $.stellar({
            horizontalScrolling: false
        });
    }

    $('.navToggle').click(toggleNavResp);
    $(window).resize(function () {
        if($(window).width() > 991) {
            $('.navMainResp').hide();
        }
    });

    updateNavigation();
    $(window).resize(updateNavigation);
    $(window).scroll(updateNavigation);
});

function scrollToTop() {
    $('html,body').animate({
        scrollTop: 0
    }, '100');
}

function scrollToContent() {
    var top = $('.containerContent').position().top;
    $('html,body').animate({
        scrollTop: top+'px'
    }, '100');
}

function toggleNavResp() {
    var $navMainResp = $('.navMainResp');
    $navMainResp.animate({
        'height': 'toggle'
    });
}

function updateNavigation() {
    var top = $('.top');
    var scrollPos = $(document).scrollTop();

    if(scrollPos > 300) {
        top.addClass('moved');
    }
    else {
        top.removeClass('moved');
    }
}