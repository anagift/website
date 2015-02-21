'use strict'

app = angular.module 'app'

app.run ($httpBackend) ->
  $httpBackend.whenGET(/^views\.*/).passThrough()

  userList = [
    { name: "userA", total: 1000 }
    { name: "userB", total: 2000 }
  ]

  $httpBackend.whenGET('/users/').respond userList
