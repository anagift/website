'use strict'

app = angular.module 'app'

React = require 'react/addons'
SAMPLE = React.createFactory require '../components/sample'

app.directive 'ngSample', ->
  restrict: 'E'
  scope:
    value: '='
  link: (scope, el, attrs) ->
    scope.$watch 'value', (newValue, oldValue) ->
      React.render(
        SAMPLE({value:newValue})
        el[0]
      )
