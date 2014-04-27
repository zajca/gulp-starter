gulp = require('gulp')
clean = require("gulp-clean")

gulp.task 'clean', ->
  gulp.src([
    "./build",
    "./index.html",
    "./tmp"],
    read: false)
  .pipe(clean())