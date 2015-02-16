'use strict'

gulp = require 'gulp'

plumber = require 'gulp-plumber'
sass = require 'gulp-sass'
bourbon = require 'node-bourbon'

gulp.task 'sass', ->
  gulp.src [
    './app/sass/**/*.sass'
  ]
    .pipe plumber()
    .pipe sass
      includePaths: bourbon.includePaths
      indentedSyntax: true
      errLogToConsole: true
    .pipe gulp.dest './app/styles/'
