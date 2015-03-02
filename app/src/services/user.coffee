'use strict'

###*
 # userList
 # @class userList
  
 * @ngdoc service
 * @name app.service:userList
 *
 * @description
 * mockとfactory読込のサンプルのservice
 * mockで作成したuser object(json)を読込表示
 * 
 * @example
###

app = angular.module 'app'

app.factory 'userList', ($resource) ->
  $resource 'user/list'
