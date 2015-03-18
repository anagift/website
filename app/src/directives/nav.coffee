'use strict'

###*
 # ngNav
 # @class ngNav

 * @ngdoc directive
 * @name app.directive:ngNav
 * @restrict A
 * 
 * @description
 * nav表示用のdirective
 * 
 * @example
###

app = angular.module 'app'

React = require 'react/addons'
NAV = React.createFactory require '../components/nav'

app.directive 'ngNav', ->
  restrict: 'A'

  compile: (el) ->
    React.render NAV(), el[0]
