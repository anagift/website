'use strict'

gulp = require 'gulp'

plumber   = require 'gulp-plumber'
docco     = require 'gulp-styledocco'
notifier  = require 'node-notifier'
prefixer  = require 'gulp-autoprefixer'

sass = require 'gulp-sass'
neat = require 'node-neat'

gulp.task 'sass', ->
  gulp.src [
    './app/sass/**/*sass'
  ]
    .pipe plumber()
    .pipe sass
      includePaths: neat.includePaths
      indentedSyntax: true
      onError: (err) ->
        console.error err.message
        notifier.notify
          title: '[sass]'
          message: err.message
          sound: true
    .pipe prefixer()
    .pipe gulp.dest './app/styles/'

  gulp.src [
    './app/sass/**/*sass'
  ]
  .pipe docco
    out: './app/docs/css/'
    name: 'CSS'
  .pipe gulp.dest './app/docs/css/'
