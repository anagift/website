'use strict'

gulp = require 'gulp'

cjsx = require 'gulp-cjsx'

gulp.task 'cjsx', ->
  gulp.src './app/src/**/*.cjsx'
    .pipe cjsx({bare: true})
    .on 'error', console.error.bind(console)
    .pipe gulp.dest './app/scripts/'
