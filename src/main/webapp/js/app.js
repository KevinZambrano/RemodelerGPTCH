/**
 * 
 */
var app = angular.module('app', [ 'ngRoute' ]);

app.config([ '$routeProvider', function($routeProvider) {

	$routeProvider.when('/', {
		templateUrl : "inicio.html",
		controller : "DashboardController"
	});

	$routeProvider.when('/tareas', {
		templateUrl : "tareas.html",
		controller : "TareasController"
	});

	$routeProvider.when('/comentarioproblemas/:variable', {
		templateUrl : "comentarioproblemas.html",
		controller : "ProblemaComentarioController"
	});

	$routeProvider.when('/notas/reunion', {
		templateUrl : "notasreunion.html",
		controller : "NotasRunionController"
	});
	
	$routeProvider.when('/notas/agregar', {
		templateUrl : "agregarnota.html",
		controller : "NotasRunionController"
	});
} ]);