'use strict'

describe 'MainCtrl [controllers/main.coffee]: ', ->

  scope = {}
  ctrl = {}

  beforeEach angular.mock.module('app')

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ctrl = $controller 'MainCtrl', {$scope: scope}

  it 'MainCtrlが存在していること', () ->
    expect(ctrl).to.be.defined

  it 'scope.titleがwww.example.comであること', () ->
    expect(scope.title).to.equal('www.example.com')
