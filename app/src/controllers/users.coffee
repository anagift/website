'use strict'

###*
 # UsersCtrl
 # @class UsersCtrl
  
 * @ngdoc controller
 * @name app.controller:UsersCtrl
 *
 * @description
 * mockとfactory読込のサンプルのcontroller
 * mockで作成したuser object(json)を読込表示
 * 
 * @example
###

app = angular.module 'app'

app.controller 'UsersCtrl', [
  '$scope', '$resource', 'userList',
  ($scope, $resource, userList) ->
    userList.query (res) ->
      $scope.users = res
]
