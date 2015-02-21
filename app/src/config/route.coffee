'use strict'

app = angular.module 'app'

app.config [
  '$routeProvider', '$locationProvider',
  ($routeProvider, $locationProvider) ->
    $locationProvider.html5Mode true

    $routeProvider
      .when '/',
        templateUrl: 'views/top.html'
        controller: 'MainCtrl'

      .when '/sample',
        templateUrl: 'views/sample.html'
        controller: 'MainCtrl'

      .when '/angular',
        templateUrl: 'views/angular.html'
        controller: 'BenchMark'

      .when '/react',
        templateUrl: 'views/react.html'
        controller: 'BenchMark'

      .otherwise
        redirectTo: '/'
]
