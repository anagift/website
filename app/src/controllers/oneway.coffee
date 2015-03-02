'use strict'

###*
 # OnewayCtrl
 # @class OnewayCtrl
  
 * @ngdoc controller
 * @name app.controller:OnewayCntl
 *
 * @description
 * one way bindingのサンプルのcontroller
 * controllerで設定した文字列を表示
 * 
 * @example
###

app = angular.module 'app'

app.controller 'OnewayCtrl', [
  '$scope', '$resource',
  ($scope, $resource) ->
    $scope.title = 'www.example.com'
]
