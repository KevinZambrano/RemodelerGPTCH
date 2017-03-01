/**
 * 
 */
app.controller("DashboardController", function($scope, $http) {

	$scope.flagLoading = false;

	$scope.cargarGrupos = function() {
		$scope.flagLoading = true;

		var request = $http.get(CONSTANTS.path + "/gestion/grupos");
		request.success(function(response) {
			$scope.grupos = response;
			$scope.flagLoading = false;
		});
		request.error(function(error) {
			alert(error);
			$scope.flagLoading = false;
		});
	};

	$scope.cargarProblemas = function() {
		$scope.flagLoading = true;

		var request = $http.get(CONSTANTS.path + "/gestion/problemas");
		request.success(function(response) {
			$scope.problemas = response;
			$scope.flagLoading = false;
		});
		request.error(function(error) {
			alert(error);
			$scope.flagLoading = false;
		});
	};

	$scope.cargarGrupos();
	$scope.cargarProblemas();
});