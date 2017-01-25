
(function() {
  "use strict";

  angular.module("app").controller("searchCtrl", function($scope, $http) {
  
	$scope.users = []

	$scope.searchusers = function (searchterm) {
		console.log(searchterm)
		$http({
		  method: 'GET',
		  url: 'http://localhost:3000/searchusers/' + searchterm + ".json"
			}).then(function successCallback(response) {
		    // this callback will be called asynchronously
		    // when the response is available
		    $scope.users = (response.data)
		  }, function errorCallback(response) {
		    // called asynchronously if an error occurs
		    // or server returns response with an error status.
		  });
	};


    window.$scope = $scope;
  });

})();