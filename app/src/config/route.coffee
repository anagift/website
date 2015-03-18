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
  '$locationProvider', '$stateProvider', '$urlRouterProvider',
  ($locationProvider, $stateProvider, $urlRouterProvider) ->

    $locationProvider.html5Mode true
    $urlRouterProvider.otherwise '/'

    $stateProvider
      .state '/',
        url: '/'
        templateUrl: 'views/pages/top.html'
        data:
          pageTitle: 'home'

      .state 'oneway',
        url: '/oneway'
        controller: 'OnewayCtrl'
        templateUrl: 'views/pages/oneway.html'
        data:
          pageTitle: 'oneway'

      .state 'twoway',
        url: '/twoway'
        controller: 'TwowayCtrl'
        templateUrl: 'views/pages/twoway.html'
        data:
          pageTitle: 'twoway'

      .state 'transition',
        url: '/transition'
        templateUrl: 'views/pages/transition.html'
        data:
          pageTitle: 'transition'

      .state 'users',
        url: '/users'
        controller: 'UsersCtrl'
        templateUrl: 'views/pages/users.html'
        data:
          pageTitle: 'users'

      .state 'angular',
        url: '/benchmark/angular'
        controller: 'BenchmarkCtrl'
        templateUrl: 'views/components/angular.html'
        data:
          pageTitle: 'benckmark.angular'

      .state 'react',
        url: '/benchmark/react'
        controller: 'BenchmarkCtrl'
        templateUrl: 'views/components/react.html'
        data:
          pageTitle: 'benckmark.react'
]
