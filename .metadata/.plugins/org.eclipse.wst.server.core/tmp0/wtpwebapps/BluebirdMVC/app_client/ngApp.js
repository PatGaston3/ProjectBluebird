// ngApp.js

var app = angular.module('ngBB', ['ngRoute', 'chart.js', 'ui.bootstrap'])
.config(function($routeProvider){
	$routeProvider
	.when('/',{
		templateUrl: 'landing.view.html',
		controller: 'landingController'
	})
<<<<<<< HEAD
	.when('/register',{
		templateUrl: 'register.view.html',
		controller: 'registerController'
	})
	.when('/login',{
		templateUrl: 'login.view.html',
		controller: 'loginController'
	})
	.when('/profile',{
		templateUrl: 'profile.view.html',
		controller: 'profileController'
	})
	.when('/logout',{
		templateUrl: 'logout.view.html',
		controller: 'logoutController'
	})
=======
>>>>>>> debb3e3c73b90aecdb2a525d582eb1e6d773d002
	.otherwise({
	      redirectTo: '/'
	});
});
