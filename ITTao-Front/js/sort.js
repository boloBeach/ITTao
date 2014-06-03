define(function(require, exports, module) {
    var $ = jQuery;

    $(function() {
        var videolist = $('.item-list-li');
        videolist.click(function() {
            var video = $('#video');
            video.show();
        });

        var videoclose = $('#videoclose');
        videoclose.click(function() {
            var video = $('#video');
            video.hide();
        });
    });

});


























