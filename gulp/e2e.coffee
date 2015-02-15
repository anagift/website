'use strict'

gulp = require 'gulp'

protractor  = require 'gulp-protractor'
runSequence = require 'run-sequence'
webserver   = require 'gulp-webserver'
exit        = require 'gulp-exit'

webserverConfig =
  wd:
    host: 'localhost',
    port: 9875

gulp.task 'webserver-start', ->
  gulp.src 'app'
    .pipe webserver
      host: webserverConfig.wd.host
      port: webserverConfig.wd.port
      livereload: false

gulp.task 'protractor', ->
  cfg = webserverConfig
  url = 'http://' + cfg.wd.host + ':' + cfg.wd.port
  gulp.src ['./e2e/scenarios/**/*_spec.coffee']
    .pipe protractor.protractor
      configFile: './e2e/protractor.conf.coffee'
      args: ['--baseUrl', url]
    .on 'error', (e) ->
      throw e

gulp.task 'e2e', (callback) ->
  runSequence 'webserver-start',
    'protractor', ->
      gulp.src ''
        .pipe exit()
        callback()
