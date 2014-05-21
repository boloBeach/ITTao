define(function(require, exports, module) {
//    var $ = require('jquery');
    var $ = jQuery;
    var easing = require('easing');

    jQuery.easing.def = "easeOutBounce";

    $(function() {
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


























