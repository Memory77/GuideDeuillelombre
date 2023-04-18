(function ($) {
$(function(){
    // animate on scroll//
    new WOW().init();
});

$(function(){
    
    $("#stats-img").magnificPopup({
        delegate: 'a',
        type: 'image',
        gallery:{
        enabled: true
        }
        
        });
    });

/** NAVIGATION - SHOW / HIDE NAVBAR - SMOOTH SCROLL**/

$(function () {
    $(window).scroll(function(){
        if($(this).scrollTop() < 50){
            $('nav').removeClass('dlombre-top-nav');
            $('#back-to-top').fadeOut();
        }
        else {
            $('nav').addClass('dlombre-top-nav');
            $('#back-to-top').fadeIn();
        }
    });
});

$(function () {
    $('a.smooth-scroll').click(function(event){
        event.preventDefault();
        var section = $(this).attr('href');
        $('html, body').animate({
           scrollTop: $(section).offset().top - 64
        }, 200, "easeInOutExpo");
    });
});

// Close mobile menu on click
$(function () {
    $('.navbar-collapse ul li a').on("click touch", function(){
        $('.navbar-toggle').click();
    });
});
    
//quete img//
    

    $(function(){
    
    $("#quete-img").magnificPopup({
        delegate: 'a',
        type: 'image',
        gallery:{
        enabled: true
        }
        
        });
    });
    

    
    
    
})(jQuery);