angular.module('flapperNews', ['templates', 'ui.router', 'ngMaterial', 'ngAnimate'])
.config([
  '$stateProvider',
  '$urlRouterProvider',
  function($stateProvider, $urlRouterProvider) {

    $stateProvider
    .state('home', {
      url: '/home',
      templateUrl: 'home/_home.html',
      controller: 'MainCtrl'
    })
    .state('posts', {
      url: '/posts/{id}',
      templateUrl: 'posts/_posts.html',
      controller: 'PostsCtrl'
    })
    .state('login', {
      url: '/login',
      templateUrl: 'user/_login.html',
    });

    $urlRouterProvider.otherwise('home');
}]);

