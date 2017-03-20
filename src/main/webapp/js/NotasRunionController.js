/**
 * 
 */
app.controller("NotasRunionController", function($scope,$http,$interval,$location){
	
	$scope.theTime = new Date().toLocaleTimeString();
	  $interval(function () {
	      $scope.theTime = new Date().toLocaleTimeString();
	  }, 1000);
	  
	$scope.flagLoading = false;
	
	$scope.cargarNotas = function(){
		$scope.flagLoading = true;
		var request = $http.get(CONSTANTS.path + "/gestion/notareunion");
		
		request.success(function(response){
			$scope.notasReuniones = response;
			$scope.flagLoading = false;
		});
		request.error(function(error){
			alert(error);
		});
	}
	
	$scope.agregarNota = function(){
		
		var request = $http.post(CONSTANTS.path + "/gestion/notareunion/agregar",
				$scope.notaReunion)
		request.success(function(response){
			$scope.cargarNotas();
		})
		request.error(function(error){
			alert(error);
		})
	}
	
	$scope.cargarNotas();
})