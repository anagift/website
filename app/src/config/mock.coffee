'use strict'

###*
 # run
 # @class run

 * @ngdoc directive
 * @name app.run
 * 
 * @description
 * mockとfactory読込のサンプルのmock
 * userList Objectを設定 
 * 
 * @example
###

app = angular.module 'app'

app.run [ '$httpBackend', ($httpBackend) ->
  $httpBackend.whenGET(/^views\.*/).passThrough()

  userList = [
    { name: "userA", total: 1000 }
    { name: "userB", total: 2000 }
  ]

  $httpBackend.whenGET('user/list').respond userList
]
