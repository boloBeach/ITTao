require.config({
    baseUrl: 'js',
    paths: {
        jquery: 'lib/jquery/jquery',
        easing: 'lib/jquery/jquery.easing.1.3',
        livereload: 'livereload'
    }
});

require(['jquery', 'easing'], function(jQuery, sasing) {
    var $ = jQuery;
    jQuery.easing.def = "easeOutBounce";

    $(function() {
        var search = $('.search');
        search.children('input').on('focus', function() {
            var that = $(this);
            that.animate({
                width: '150px'
            }, 900);
            that.siblings('i')
                   .removeClass('glyphicon-search')
                   .addClass('glyphicon-ok')
                   .bind('click', function() {
                     console.log(that.val());
                });
        });
        search.on('focusout', function() {
            console.log(111);
            $(this).children('input')
                .animate({
                width: '40px'
            }, 900)
                .siblings('i')
                .removeClass('glyphicon-ok')
                .addClass('glyphicon-search');
        });

        var slide = $('.slide'),
            slide_li = slide.find('li'),
            slide_index = 0,
            slide_li_now,
            slide_li_move;
        slide.children('span').on('click', function() {
//            jQuery.easing.def = "swing";
            var that = $(this);
            if(that.hasClass('left')) {
                if(slide_index == slide_li.size() - 1) {
                    slide_index = 0
                } else {
                    slide_index++;
                }
                slide_li_now = slide_li.filter('.show');
                slide_li_move = slide_li.eq(slide_index);
                slide_li_move.addClass('showNoneZ');
                if(!slide_li_now.is(':animated')) {
                    slide_li_now.animate({
                        left: '-500px'
                    }, 1000, 'swing', function() {
                        slide_li_now.removeClass('show').css({
                            left: 0
                        });
                        slide_li_move.addClass('show').removeClass('showNoneZ');
                    });
                }
            } else {
                if(slide_index == 0) {
                    slide_index = slide_li.size() - 1;
                } else {
                    slide_index--;
                }
                slide_li_now = slide_li.filter('.show');
                slide_li_move = slide_li.eq(slide_index);
                slide_li_move.addClass('showNoneZ');
                if(!slide_li_now.is(':animated')) {
                    slide_li_now.animate({
                        left: '500px'
                    }, 1000, 'swing', function() {
                        slide_li_now.removeClass('show').css({
                            left: 0
                        });
                        slide_li_move.addClass('show').removeClass('showNoneZ');
                    });
                }
            }
        });
    });
});


























