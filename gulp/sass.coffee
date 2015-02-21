'use strict'

gulp = require 'gulp'

plumber   = require 'gulp-plumber'
notifier  = require 'node-notifier'

sass = require 'gulp-sass'
neat = require 'node-neat'

gulp.task 'sass', ->
  gulp.src [
    './app/sass/**/*.sass'
  ]
    .pipe plumber()
    .pipe sass
      includePaths: neat.includePaths
      indentedSyntax: true
      onError: (err) ->
        console.error err.message
        notifier.notify
          title: '[webpack]'
          message: err.message
          sound: true
    .pipe gulp.dest './app/styles/'
