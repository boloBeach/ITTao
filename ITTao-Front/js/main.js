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
    $.easing.def = "easeOutBounce";

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
    });
});