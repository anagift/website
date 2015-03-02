'use strict'

gulp = require 'gulp'

karma = require 'karma'

karma_config = process.cwd() + '/karma.conf.coffee'

gulp.task 'karma', ->
  karma.server.start
    configFile: karma_config
