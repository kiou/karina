$( document ).ready(function() {

    var menu = $('.navigation');

    var checkScroll = function() {
        if ($(window).scrollTop() > 60) {
          menu.addClass('fixed');
          if ($('.message').length) {
              $('.message').remove();
          }
        } else {
          menu.removeClass('fixed');
        }
      };
    
      checkScroll();

      $(window).scroll(checkScroll);

      $(".owl-one").owlCarousel({
        loop:false,
        items:5,
        nav:false,
        margin:0,
        responsiveClass:true,
        responsive:{
            0:{
                items:2,
            },
            850:{
                items:3,
            },
            1200:{
                items:4,
            },
            1400:{
                items:5,
            }
        }
      });

      $('#menu-btn').on('click', function(e){
        e.preventDefault();

        $('#menu-btn').toggleClass('active');
        $('.mobilemenucontent').toggleClass('active');
      });


});

