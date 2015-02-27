'use strict'

###*
 # TwowayCtrl
 # @class TwowayCtrl
  
 * @ngdoc controller
 * @name app.controller:TwowayCtrl
 *
 * @description
 * two way bindingのサンプルのcontroller
 * フィールドと連動して文字列を表示
 * 
 * @example
###

app = angular.module 'app'

app.controller 'TwowayCtrl', [
  '$scope',
  ($scope) ->
    $scope.value = 'type here'
]
