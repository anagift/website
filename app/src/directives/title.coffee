'use strict'

###*
 # pageTItle
 # @class pageTItle

 * @ngdoc directive
 * @name app.directive: pageTItle
 * @restrict C
 * 
 * @description
 * nav表示用のdirective
 * nav.htmlをテンプレートとして読込表示
 * 
 * @example
###

app = angular.module 'app'

app.directive 'title', [
  '$rootScope', '$timeout', ($rootScope, $timeout) ->
    link: ->
      listener = (event, ste) ->

        $timeout ->
          if (ste.data && ste.data.pageTitle)
            $rootScope.title = ste.data.pageTitle
          else
            $rootScope.title = 'Default Title'

      $rootScope.$on '$stateChangeSuccess', listener
  ]
