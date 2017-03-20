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
	
	$scope.cargarEstados = function(){
		$scope.flagLoading = true;
		
		var request = $http.get(CONSTANTS.path + "/gestion/estados");
		request.success(function(response){
			
			$scope.estados = response;
			$scope.flagLoading = false;
		});
		request.error(function(error){
			alert(error);
			$scope.flagLoading = false;
		});
	}
	
	$scope.cargarPrioridades = function(){
		$scope.flagLoading = true;
		
		var request = $http.get(CONSTANTS.path + "/gestion/prioridades");
		request.success(function(response){
			
			$scope.prioridades = response;
			$scope.flagLoading = false;
		});
		request.error(function(error){
			alert(error);
			$scope.flagLoading = false;
		});
	}
	
	$scope.cargarImpacto = function(){
		$scope.flagLoading = true;
		
		var request = $http.get(CONSTANTS.path + "/gestion/impacto");
		request.success(function(response){
			
			$scope.impactos = response;
			$scope.flagLoading = false;
		});
		request.error(function(error){
			alert(error);
			$scope.flagLoading = false;
		});
	}
	
	$scope.agregarProblema = function(){
		
		var request = $http.post(CONSTANTS.path + "/gestion/problemas/problema",
				$scope.problema);
		request.success(function(response){
			$scope.cargarProblemas();
			$scope.cargarCantidadProblemas();
			$scope.flagLoading = false;
		});
		request.error(function(error){
			alert(error);
		});
	}
	
	$scope.agregarComentarioProblema = function(){
		$scope.flagLoading = true;
		
		var request = $http.post(CONSTANTS.path + "/gestion/comentarioproblemas/agregar", 
				$scope.comentarioProblema);
		
		request.success(function(response){
			$scope.cargarComentariosProblemas();
			$scope.flagLoading = false;
		});
		request.error(function(error){
			alert(error);
		});
	}
	
	$scope.cargarCantidadProblemas = function(){
		$scope.flagLoading = true;
		
		var request = $http.get(CONSTANTS.path + "/gestion/problemas/cantidad");
		request.success(function(response){
			$scope.cantidadproblemas = response;
			$scope.flagLoading = false;
		});
		request.error(function(error){
			alert(error);
			$scope.flagLoading = false;
		});
	}
	
	$scope.cargarComentarioProblemas = function(){
		$scope.flagLoading = true;
		
		var request = $http.get(CONSTANTS.path + "/gestion/comentarioproblemas");
		request.success(function(response){
			$scope.comentarioProblemas = response;
			$scope.flagLoading = false;
		});
		request.error(function(error){
			alert(error);
		});
	}
	
	$scope.cargarGrupos();
	$scope.cargarProblemas();
	$scope.cargarUsuarios();
	$scope.cargarEstados();
	$scope.cargarPrioridades();
	$scope.cargarImpacto();
	$scope.cargarCantidadProblemas();
	$scope.cargarComentarioProblemas();
});