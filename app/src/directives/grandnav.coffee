'use strict'

###*
 # ngGrandnav
 # @class ngGrandnav

 * @ngdoc directive
 * @name app.directive:ngGrandnav
 * @restrict A
 * 
 * @description
 * grandnavのdirective
 * reactjs cssTransitionGruopのサンプル含む
 * 
 * @example
###

app = angular.module 'app'

React = require 'react/addons'
GRANDNAV = React.createFactory require '../components/grandnav'

app.directive 'ngGrandnav', ->
  restrict: 'A'

  compile: (el) ->
    React.render GRANDNAV(), el[0]
