'use strict'

gulp = require 'gulp'

plumber   = require 'gulp-plumber'
notifier  = require 'node-notifier'
run       = require 'gulp-run'
gutil     = require 'gulp-util'

gulp.task 'yuidoc', ->
  gulp.src 'app/src'
  .pipe plumber()
  .pipe run('yuidoc', {verbosity: 0}).exec()
  .on 'error', (err) ->
    gutil.log err

    notifier.notify
      title: '[yuidoc]'
      message: err
      sound: true

gulp.task 'yuidoc:debug', ->
  gulp.src 'app/src'
  .pipe plumber()
  .pipe run('yuidoc', {verbosity: 2}).exec()
  .on 'error', (err) ->
    gutil.log err

    notifier.notify
      title: '[yuidoc]'
      message: err
      sound: true
