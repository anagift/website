'use strict'

###*
 # ngTransition
 # @class ngTransition

 * @ngdoc directive
 * @name app.directive:ngTransition
 * @restrict A
 * 
 * @description
 * /transitionのdirective
 * reactjs cssTransitionGruopのサンプル含む
 * 
 * @example
###

app = angular.module 'app'

React = require 'react/addons'
TRANSITION = React.createFactory require '../components/transition'

app.directive 'ngTransition', ->
  restrict: 'A'

  compile: (el) ->
    React.render TRANSITION(), el[0]
