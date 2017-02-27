/**
 * 
 */
var app = angular.module('app', [ 'ngRoute' ]);

app.config(		function($routeProvider, $controllerProvider) {

			app.registerCtrl = $controllerProvider.register;
			$routeProvider.when('/', {
				controller : 'DashboardController',
				templateUrl : 'inicio.html'
			});
			
});