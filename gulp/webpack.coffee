'use strict'

gulp = require 'gulp'

webpack = require 'webpack'
gutil   = require 'gulp-util'

webpack_config = require '../webpack.config.coffee'

gulp.task 'webpack', (cb) ->
  execWebpack webpack_config
  cb()

execWebpack = (config) ->
  webpack config, (err, stats) ->
    # enable message log
    # if (err) then throw new gutil.PluginError(
    #   'webpack', err
    # )
    # gutil.log "[webpack]", stats.toString
    #   color: true
