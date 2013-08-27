describe "MainCtrl", ->
  beforeEach module('app')
  
  ctrl = null
  scope = null
  httpBackend = null
  response = [{name: "test"}]
  
  beforeEach inject(($rootScope, $controller, $httpBackend) ->
    scope = $rootScope.$new()
    
    httpBackend = $httpBackend
    httpBackend.when("GET", "/api/v1/models").respond(response)
    
    ctrl = $controller("MainCtrl", 
      $scope: scope
    )
  )
  
  it "returns the server response", ->
    httpBackend.flush()
    expect(scope.model).toEqual(response)