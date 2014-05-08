define([], function() {
    function livereload() {
        var script = document.createElement('script');
        script.src = "http://" + (location.host || 'localhost').split(':')[0] + ":35729/livereload.js?snipver=1";
        document.getElementsByTagName('head')[0].appendChild(script);
    }
    return livereload;
});