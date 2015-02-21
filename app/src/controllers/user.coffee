'use strict'

app = angular.module 'app'

app.controller 'UserCtrl', [
  '$scope', '$resource', 'userList',
  ($scope, $resource, userList) ->
    userList.query (res) ->
      $scope.users = res
]
