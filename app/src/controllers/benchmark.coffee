'use strict'

###*
 # BenckMark
 # @class BenchMark
  
 * @ngdoc controller
 * @name app.controller:BenchMark
 *
 * @description
 * benckmarkページ用のangular側のcontroller
 * 1500*5の乱数をangularを使って表示
 * 
 * @example
###

app = angular.module 'app'

app.controller 'BenchMark', [
  '$scope','$resource'
  ($scope, $resource) ->
    $scope.data = []

    $scope.clickHandler = ->
      console.log 'in AngularJS'

    $scope.refresh = ->
      for i in [0..1500]
        $scope.data[i] = {}
        for j in [0..5]
          $scope.data[i][j] = Math.random()

    $scope.refresh()
]
