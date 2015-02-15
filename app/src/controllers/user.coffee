'use strict'

app = angular.module 'app'

app.controller 'UserCtrl', ($scope) ->
  $scope.users = [
    { name: "userA", total: 1000 }
    { name: "userB", total: 2000 }
  ]
