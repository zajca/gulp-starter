var gulp         = require('gulp');
var livereload   = require('gulp-livereload');
var notify       = require('gulp-notify');
var gulpif       = require('gulp-if');
var plumber      = require('gulp-plumber');
var sprite       = require('css-sprite').stream;
var debug        = require('gulp-debug');

var spriteConf={
    name: 'sprite.png',
    style: 'sprites.less',
    cssPath: 'images/',
    processor: 'less'
};

gulp.task('SPRITES_DEV', function() {
    return gulp.src(["./src/images/**/*.png","!./src/images/**/*_NS.png"])
//    .pipe(debug({verbose: true}))
    .pipe(sprite(spriteConf))
    .pipe(gulpif('*.png', gulp.dest("./build/images")))
    .pipe(gulpif('*.less', gulp.dest("./src/less/")))
    .pipe(livereload());
});

gulp.task('SPRITES', function() {
    return gulp.src(["./src/images/**/*.png","!./src/images/**/*_NS.png"])
    .pipe(sprite(spriteConf))
    .pipe(gulpif('*.png', gulp.dest("./build/images")))
    .pipe(gulpif('*.less', gulp.dest("./src/less/")))
});