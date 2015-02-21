'use strict'

app = angular.module 'app'

app.controller 'BenchMark', [
  '$scope','$resource'
  ($scope, $resource) ->
    $scope.data = []

    $scope.clickHandler = ->
      console.log 'in AngularJS'

    $scope.refresh = ->
      for i in [0..15000]
        $scope.data[i] = {}
        for j in [0..5]
          $scope.data[i][j] = Math.random()

    $scope.refresh()
]
