'use strict'

app = angular.module 'app'

React = require 'react/addons'

BENCHMARK = React.createFactory require '../components/benchmark'

app.directive 'ngBenchMark', ->
  restrict: 'E'
  scope:
    data: '='
  link: (scope, el, attrs) ->
    scope.$watchCollection 'data', (newValue, oldValue) ->
      React.render(
        BENCHMARK({data:newValue}),
        el[0]
      )
