gulp = require('gulp')
ngHtml2Js = require("gulp-ng-html2js")
minifyHtml = require("gulp-minify-html")
concat = require("gulp-concat")
uglify = require("gulp-uglify")
livereload = require('gulp-livereload')
rev = require('gulp-rev')

gulp.task('HTML2JS_DEV', ->
  gulp.src("./src/**/*.tpl.html")
  .pipe(ngHtml2Js({
      moduleName: "templates"
#        prefix: "build/"
    }))
  .pipe(concat("templates.js"))
  .pipe(gulp.dest("./tmp"))
  .pipe(livereload())
)

gulp.task('HTML2JS', ->
  gulp.src("./src/**/*.tpl.html")
  .pipe(minifyHtml {
      empty: true
      spare: true
      quotes: true
    })
  .pipe(ngHtml2Js({
      moduleName: "templates"
#        prefix: "build/"
    }))
  .pipe(concat("templates.js"))
  .pipe(uglify())
  .pipe(rev())
  .pipe(gulp.dest("./tmp"))
)