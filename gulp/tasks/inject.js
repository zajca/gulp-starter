var gulp, inject, livereload;
gulp = require("gulp");
inject = require("gulp-inject");
livereload = require('gulp-livereload');

gulp.task('INJECT', ["browserify", "LESS"], function() {
    return gulp.src("./build/**/*", {
            read: false
        }).pipe(inject("./src/index.html", {
            addRootSlash: false,
            ignorePath: ["/"]
        })).pipe(gulp.dest("./"))
        .pipe(livereload());
});

gulp.task('INJECT_DEV', ["browserify_dev", "LESS_DEV"], function() {
    return gulp.src("./build/**/*", {
        read: false
    }).pipe(inject("./src/index.html", {
            addRootSlash: false,
            ignorePath: ["/"]
        })).pipe(gulp.dest("./"))
        .pipe(livereload());
});
