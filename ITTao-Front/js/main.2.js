define(function(require, exports, module) {
//    var $ = require('jquery');
    var $ = jQuery;
    var easing = require('easing');

//    jQuery.easing.def = "easeOutBounce";

    $(function() {
        var slide = $('.slide'),
            slide_li = slide.find('li'),
            slide_index = 0,
            slide_li_now,
            slide_li_move,
            slide_li_moving = false;
        slide.children('span').on('click', function() {
            var that = $(this);
            if(!slide_li_moving) {
                slide_li_moving  = true;
                if(that.hasClass('left')) {
                    if(slide_index == slide_li.size() - 1) {
                        slide_index = 0
                    } else {
                        slide_index++;
                    }
                    slide_li_now = slide_li.filter('.show');
                    slide_li_move = slide_li.eq(slide_index);
                    slide_li_move.addClass('showNoneZ');
                    slide_li_now.animate({
                        left: '-500px'
                    }, 1000, 'swing', function() {
                        slide_li_now.removeClass('show').css({
                            left: 0
                        });
                        slide_li_move.addClass('show').removeClass('showNoneZ');
                        slide_li_moving = false;
                    });
                } else {
                    console.log('move');
                    if(slide_index == 0) {
                        slide_index = slide_li.size() - 1;
                    } else {
                        slide_index--;
                    }
                    slide_li_now = slide_li.filter('.show');
                    slide_li_move = slide_li.eq(slide_index);
                    slide_li_move.addClass('showNoneZ');
                    slide_li_now.animate({
                        left: '500px'
                    }, 1000, 'swing', function() {
                        slide_li_now.removeClass('show').css({
                            left: 0
                        });
                        slide_li_move.addClass('show').removeClass('showNoneZ');
                        slide_li_moving = false;
                    });
                }
            }

        });



        $('.mobile-header-list').click(function() {
            var nav = $('.header nav');
            nav.slideToggle('fast');
        });
    });

});


























