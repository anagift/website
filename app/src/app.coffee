'use strict'

###*
 # This module contains classes for runnnig App.
 # @module App
###

require 'angular'
require 'angular-route'
require 'angular-ui-router'
require 'angular-resource'
require 'angular-sanitize'
require 'angular-mocks'

module.exports = angular.module 'app', [
  'ui.router'
  'ngRoute'
  'ngResource'
  'ngSanitize'
  'ngMockE2E'
]

# config
require './config/route'
require './config/mock'

# controllers
require './controllers/oneway'
require './controllers/twoway'
require './controllers/benchmark'
require './controllers/users'

# directives
require './directives/pagetitle'
require './directives/oneway'
require './directives/twoway'
require './directives/benchmark'
require './directives/nav'

# service
require './services/user'
