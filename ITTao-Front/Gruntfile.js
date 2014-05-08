module.exports = function(grunt) {
    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        watch: {
            files: ['./**.html',
                './js/**.js',
                './css/**.css',
                './images/**.{png,jpg,jpeg,gif,webp,svg}'
            ],
            options: {
                livereload: true
            }/*,
             tasks: ["htmlhint", "jshint"]*/
        },
        cssmin: {
            minify: { //css压缩
                expand: true,
                cwd: './css',
                src: ['**.css', '!*.min.css'],
                dest: './css',
                ext: '.min.css'
            }/*,
             combine: { //css合并
             file: 'dest/css/out.min.css': ['dest/css/part1.min.css', 'dest/css/part2.min.css']
             }*/
        },
        jshint: { //js代码检查
            options: {
                eqeqeq: true, //eqeqeq表示要用严格相等运算符取代相等运算符，trailing表示行尾不得有多余的空格
                trailing: true
            },
            files: ['Gruntfile.js', './js/**.js', './js/!*.min.js']
        }/*,
         concat: { //可用于js和css的合并
         js: {
         src: ['src/js/js1.js', 'src/js/js2.js', 'src/js/js2.js'],
         dest: ['src/js/js-all.js']
         },
         css: {
         src: ['src/css/css1.css', 'src/css/css2.css', 'src/css/css3.css'],
         dest: ['src/css/css-all.css']
         }
         }
        htmlhint: {
            build: {
                options: {
                    'tag-pair': true,
                    'tagname-lowercase': true,
                    'attr-lowercase': true,
                    'attr-value-double-quotes': true,
                    'doctype-first': true,
                    'spec-char-escape': true,
                    'id-unique': true,
                    'head-script-disabled': true,
                    'style-disabled': true
                },
                src: ['./**.html']
            }
        }*/
    });
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-contrib-cssmin');
    grunt.loadNpmTasks('grunt-contrib-jshint');
};