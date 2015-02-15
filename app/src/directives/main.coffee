'use strict'

app = angular.module 'app'

app.directive 'ngMain', ->
  restrict: 'C'
  template: require '../../views/main.html'
