var gulp = require('gulp');

gulp.task('dev', ['clean','INJECT_DEV','HTML2JS_DEV','LESS_DEV' ,'IMAGES_DEV','browserify_dev','watch', 'open']);