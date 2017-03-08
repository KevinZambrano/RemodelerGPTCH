/**
 * 
 */
var app = angular.module('app', [ 'ngRoute' ]);

app.config([ '$routeProvider', function($routeProvider) {

	$routeProvider.when('/', {
		templateUrl : "inicio.html",
		controller : "DashboardController"
	});
	
	$routeProvider.when('/tareas/{{idproblema}}', {
		templateUrl : "tareas.html",
		controller : "TareasController"
	});
} ]);