'use strict'

gulp = require 'gulp'

karma = require 'karma'

gulp.task 'karma', (done) ->
  karma.server.start {
    configFile: process.cwd() + '/karma.conf.coffee'
  }, ->
    done()
