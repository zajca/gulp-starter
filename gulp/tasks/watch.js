var gulp       = require('gulp');
var livereload = require('gulp-livereload');

gulp.task('watch', function(){
	gulp.watch('src/javascript/**', ['browserify']);
	gulp.watch(['src/images/**/*.png','src/less/**','src/javascript/**/*.less'], ['less']);
    gulp.watch('src/images/**/*{.ico,.svg,.gif,_NS.png}', ['images']);
	livereload();
});
