angular.module('app', []).controller('MainCtrl', ($scope, $http) ->
  promise = $http.get("/api/v1/models")
  promise.then (response) ->
    console.log response
    $scope.model = response.data
)