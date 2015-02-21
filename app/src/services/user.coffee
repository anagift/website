'use strict'

app = angular.module 'app'

app.factory 'userList', ($resource) ->
  $resource 'user/list'
