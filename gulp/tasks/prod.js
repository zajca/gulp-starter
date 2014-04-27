var gulp = require('gulp');
var runSequence = require('run-sequence');

gulp.task('prod', runSequence('clean',['HTML2JS', 'LESS' ,'images'],'browserify'));
