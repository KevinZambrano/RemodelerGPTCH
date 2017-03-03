/**
 * 
 */
app.controller("DashboardController", function($scope, $http,$interval) {

	$scope.theTime = new Date().toLocaleTimeString();
	  $interval(function () {
	      $scope.theTime = new Date().toLocaleTimeString();
	  }, 1000);
	  
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

	$scope.agregarProblema = function(){
		var request = $http.post(CONSTANTS.path + "/gestion/problemas/problema", $scope.problema);
		request.success(function(response){
			$scope.cargarProblemas();
		});
		request.error(function(response) {
			alert("No se agrego correctamente.");
		});
	};
	
	
	$scope.cargarUsuarios = function (){
		$scope.flagLoading = true;

		var request = $http.get(CONSTANTS.path + "/gestion/usuarios");
		request.success(function(response) {
			
			$scope.usuarios = response;
			$scope.flagLoading = false;
		});
		request.error(function(error) {
			alert(error);
			$scope.flagLoading = false;
		});
		
	};
	
	
	$scope.cargarGrupos();
	$scope.cargarProblemas();
	$scope.cargarUsuarios();
});