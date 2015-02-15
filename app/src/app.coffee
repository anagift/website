'use strict'

require 'angular'
require 'angular-route'
require 'angular-mocks'

module.exports = angular.module 'app', [
  'ngRoute'
  'ngMockE2E'
]

# config
require './config/routes'

# controllers
require './controllers/main'
require './controllers/user'
require './controllers/sample'
require './controllers/benchmark'

# directives
require './directives/main'
require './directives/sample'
require './directives/benchmark'
