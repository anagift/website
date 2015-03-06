'use strict'

describe 'OnewayCtrl [controllers/oneway.coffee]: ', ->

  scope = {}
  ctrl = {}

  beforeEach angular.mock.module('app')

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ctrl = $controller 'OnewayCtrl', {$scope: scope}

  it 'OnewayCtrlが存在していること', () ->
    expect(ctrl).to.be.defined

  it 'scope.titleがwww.example.comであること', () ->
    expect(scope.title).to.equal('www.example.com')
