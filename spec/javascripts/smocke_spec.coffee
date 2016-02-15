#= require angular-mocks
describe 'MainCtrl', ->
  beforeEach(angular.mock.module('flapperNews'))

  it 'should have a MainCtrl controller', ->
    console.log flapperNews
    expect(flapperNews.MainCtrl).toBeDefined()

