'use strict'

gulp = require 'gulp'

csso = require 'gulp-csso'

gulp.task 'csso', ->
  gulp.src [
    './app/styles/*.css'
    '!./app/styles/build/**'
  ]
  .pipe csso()
  .pipe gulp.dest './app/styles/build/'
