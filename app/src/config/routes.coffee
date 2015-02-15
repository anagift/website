'use strict'

app = angular.module 'app'

app.config ($routeProvider) ->
  $routeProvider
    .when '/sample',
      controller: 'SampleCtrl'
    .otherwise
      redirectTo: '/'
