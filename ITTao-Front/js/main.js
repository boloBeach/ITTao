require.config({
    baseUrl: 'js',
    paths: {
        jquery: 'lib/jquery/jquery',
        livereload: 'livereload'
    }
});

require(['jquery'], function($) {
    console.log('load jquery');
//    livereload();
});