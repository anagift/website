'use strict'

gulp = require 'gulp'

webpack   = require 'webpack'
gutil     = require 'gulp-util'
notifier  = require 'node-notifier'

webpack_config = require '../webpack.config.coffee'

gulp.task 'webpack', ->
  webpack webpack_config, (err, stats) ->
    statsConfig = stats.toString
      colors: true
      chunks: false
      hash: false
      version: false
      timings: false
      assets: false

    if (statsConfig)
      gutil.log '[webpack]', statsConfig

    notifier.notify
      titie: '[webpack]'
      message: statsConfig
      sound: true
