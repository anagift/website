'use strict'

###*
 # ngNav
 # @class ngNav

 * @ngdoc directive
 * @name app.directive:ngNav
 * @restrict A
 * 
 * @description
 * nav表示用のdirective
 * nav.htmlをテンプレートとして読込表示
 * 
 * @example
###

app = angular.module 'app'

app.directive 'ngNav', ->
  restrict: 'A'
  templateUrl: 'views/layouts/nav.html'
