'use strict'

require 'angular'
require 'angular-route'
require 'angular-resource'
require 'angular-mocks'

module.exports = angular.module 'app', [
  'ngRoute'
  'ngResource'
  'ngMockE2E'
]

# config
require './config/route'
require './config/mock'

# controllers
require './controllers/main'
require './controllers/user'
require './controllers/sample'
require './controllers/benchmark'

# directives
require './directives/main'
require './directives/sample'
require './directives/benchmark'
require './services/user'
