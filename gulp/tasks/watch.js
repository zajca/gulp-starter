var gulp       = require('gulp');
var livereload = require('gulp-livereload');

gulp.task('watch', function(){
	gulp.watch('src/ng-app/**/*.coffee', ['browserify_dev']);
	gulp.watch(['!src/images/**/*_NS.png','src/images/**/*.png','src/less/**','src/ng-app/**/*.less'], ['LESS_DEV']);
    gulp.watch('src/images/**/*{.ico,.svg,.gif,_NS.png}', ['images_dev']);
    gulp.watch('src/**/*.tpl.html', ['HTML2JS_DEV']);
    gulp.watch('./src/index.html', ['INJECT_DEV']);
	livereload();
});
