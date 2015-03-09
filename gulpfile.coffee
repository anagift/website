'use strict'

gulp = require 'gulp'

require('require-dir')('./gulp')


##
# default
##

gulp.task 'default', [
  'sprite'
  'imagemin'
  'sass'
  'csso'
  'cjsx'
  'coffee'
  'webpack-min'
  'yuidoc'
  'karma'
]


##
# watch
##

gulp.task 'watch', ->
  gulp.watch [
    './app/src/**/*.coffee'
    './app/src/**/*.cjsx'
    './app/views/**/*.html'
  ], ['webpack', 'yuidoc']
  .on 'change', (event) ->
    event.path + ' was ' + event.type

  gulp.watch [
    './app/sass/**/*'
  ], ['sass']
    .on 'change', (event) ->
      event.path + ' was ' + event.type
