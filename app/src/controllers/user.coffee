'use strict'

###*
 # UserCtrl
 # @class UserCtrl
  
 * @ngdoc controller
 * @name app.controller:UserCtrl
 *
 * @description
 * mockとfactory読込のサンプルのcontroller
 * mockで作成したuser object(json)を読込表示
 * 
 * @example
###

app = angular.module 'app'

app.controller 'UserCtrl', [
  '$scope', '$resource', 'userList',
  ($scope, $resource, userList) ->
    userList.query (res) ->
      $scope.users = res
]
