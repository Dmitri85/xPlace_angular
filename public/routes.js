app.config(function ($routeProvider, $locationProvider) {
  $locationProvider.html5Mode(false);
  $locationProvider.hashPrefix('');
  $routeProvider
    .when('/', {
      templateUrl: './components/home.html'
    })
    .when('/register', {
      templateUrl: './components/register/register.html',
      controller: 'registerCtrl'
    })
    .when('/postjob', {
      templateUrl: './components/postJob/postJob.html',
      controller: 'postJobsCtrl'
    })
    .when('/myAgent', {
      templateUrl: './components/agent/agent.html',
      controller: 'agentCtrl'
    })
    .when('/profile', {
      templateUrl: './components/profile/profile.html',
      controller: 'profileCtrl'
    })
    .when('/positions', {
      templateUrl: './components/positions/positions.html',
      controller: 'positionsCtrl'
    })
});