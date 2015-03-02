'use strict'

###*
 # ngOneway
 # @class ngOneway

 * @ngdoc directive
 * @name app.directive:ngOneway
 * @restrict C
 * 
 * @description
 * one way bindingのサンプルのdirective
 * controllerで設定した文字列を表示
 * 
 * @example
###

app = angular.module 'app'

app.directive 'ngOneway', ->
  restrict: 'C'
  templateUrl: 'views/pages/oneway.html'
