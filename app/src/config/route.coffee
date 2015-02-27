'use strict'

###*
 # config
 # @class config

 * @ngdoc function
 * @name app.config
 * 
 * @description
 * angularJSのroute
 * ngRouteを使用
 * 
 * @example
###

app = angular.module 'app'

app.config [
  '$routeProvider', '$locationProvider',
  ($routeProvider, $locationProvider) ->
    $locationProvider.html5Mode true

    $routeProvider
      .when '/',
        templateUrl: 'views/pages/oneway.html'
        controller: 'OnewayCtrl'

      .when '/twoway',
        templateUrl: 'views/pages/twoway.html'
        controller: 'OnewayCtrl'

      .when '/angular',
        templateUrl: 'views/components/angular.html'
        controller: 'BenchMark'

      .when '/react',
        templateUrl: 'views/components/react.html'
        controller: 'BenchMark'

      .otherwise
        redirectTo: '/'
]
