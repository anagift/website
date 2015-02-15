'use strict'

app = angular.module 'app'

app.controller 'MainCtrl', [ '$scope', ($scope) ->
  $scope.title = 'www.example.com'
]
