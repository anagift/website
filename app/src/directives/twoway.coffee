'use strict'

###*
 # ngTwoway
 # @class ngTwoway

 * @ngdoc directive
 * @name app.directive:ngTwoway
 * @restrict A
 * 
 * @description
 * two way bindingのサンプルのdirective
 * フィールドと連動して文字列を表示
 * 
 * @example
###

app = angular.module 'app'

React = require 'react/addons'
TWOWAY = React.createFactory require '../components/twoway'

app.directive 'ngTwoway', ->

  restrict: 'A'

  scope:
    value: '='

  link: (scope, el) ->
    scope.$watch 'value', (newValue, oldValue) ->
      React.render(
        TWOWAY({value:newValue})
        el[0]
      )
