'use strict'

gulp = require 'gulp'

webpack = require 'webpack'
gutil   = require 'gulp-util'

webpack_config = require '../webpack.config.coffee'

gulp.task 'webpack', ->
  webpack webpack_config, (err, stats) ->
    if (err) then throw new gutil.PluginError(
      'webpack', err
    )
    gutil.log "[webpack]", stats.toString
      colors: true
      chunks: false
