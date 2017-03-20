/**
 * 
 */
app.controller("ProblemaComentarioController", function($location,$scope,$routeParams,$http,$interval){
	
	$scope.theTime = new Date().toLocaleTimeString();
	  $interval(function () {
	      $scope.theTime = new Date().toLocaleTimeString();
	  }, 1000);
	  
	$scope.agregarComentario = function(){
		
		$scope.comentarioProblema.idproblema = $routeParams.variable;
		
		var request = $http.post(CONSTANTS.path +"/gestion/comentarioproblemas/agregar",
				$scope.comentarioProblema);
		request.success(function(response){
			$location.path("/");
		});
		request.error(function(error){
			alert(error);
		});
	}
})