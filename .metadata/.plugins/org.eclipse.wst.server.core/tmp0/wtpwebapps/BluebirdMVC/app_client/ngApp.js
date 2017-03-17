// ngApp.js

var app = angular.module('ngBB', ['ngRoute', 'chart.js', 'ui.bootstrap'])
.config(function($routeProvider){
	$routeProvider
	.when('/',{
		templateUrl: 'landing.view.html',
		controller: 'landingController'
	})
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
	.otherwise({
	      redirectTo: '/'
	});
});
