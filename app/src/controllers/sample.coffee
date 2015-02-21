'use strict'

app = angular.module 'app'

app.controller 'SampleCtrl', [
  '$scope',
  ($scope) ->
    $scope.value = 'type here'
]
