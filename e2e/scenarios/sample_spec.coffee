chai = require 'chai'
chaiAsPromised = require 'chai-as-promised'
chai.use chaiAsPromised
expect = chai.expect


##
# サンプルテスト
##

describe 'サンプルテスト:', ->

  beforeEach ->
    browser.ignoreSynchronization = true

  it 'googleのh1は"Google"', ->
    @timeout(5000)
    browser.get 'https://www.google.com'

    expect(browser.getTitle())
      .to.eventually.equal 'Google'
