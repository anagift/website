'use strict'

###*
 # ngBenchMark
 # @class ngBenchMark

 * @ngdoc directive
 * @name app.directive:ngBenchMark
 * @restrict E
 * 
 * @description
 * benchmarkページ用のreact側のdirective
 * 1500*5の乱数をreactを使って表示
 * 
 * @example
###

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
