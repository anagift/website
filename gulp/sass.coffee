'use strict'

gulp = require 'gulp'

plumber = require 'gulp-plumber'
sass = require 'gulp-sass'

gulp.task 'sass', ->
  gulp.src [
    './app/sass/**/*.sass'
  ]
    .pipe plumber()
    .pipe sass
      indentedSyntax: true
      errLogToConsole: true
    .pipe gulp.dest './app/styles/'
