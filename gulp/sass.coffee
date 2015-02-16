'use strict'

gulp = require 'gulp'

sass = require 'gulp-sass'

gulp.task 'sass', ->
  gulp.src [
    './app/sass/**/*.sass'
    './app/sass/**/_*.scss'
  ]
    .pipe sass
      indentedSyntax: true
      errorLogConsole: true
    .pipe gulp.dest './app/styles/'
