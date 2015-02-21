'use strict'

app = angular.module 'app'

app.controller 'MainCtrl', [
  '$scope', '$resource',
  ($scope, $resource) ->
    $scope.title = 'www.example.com'
]
