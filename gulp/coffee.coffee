'use strict'

gulp = require 'gulp'

coffee = require 'gulp-coffee'

gulp.task 'coffee', ->
  gulp.src './app/src/**/*.coffee'
    .pipe coffee({bare: true})
    .on 'error', console.error.bind(console)
    .pipe gulp.dest './app/scripts/'
