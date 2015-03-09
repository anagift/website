'use strict'

gulp = require 'gulp'

imagemin = require 'gulp-imagemin'
changed  = require 'gulp-changed'

imageminOptions =
  optimizationLevel: 7

gulp.task 'imagemin', ->
    gulp.src [
      './app/assets/images/src/*'
    ]
    .pipe changed('./app/assets/images')
    .pipe imagemin(imageminOptions)
    .pipe gulp.dest './app/assets/images'
