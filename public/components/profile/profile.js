app.controller('profileCtrl', ['$scope', 'sqlMainService','loginSingUp','$timeout', function ($scope, sqlMainService, loginSingUp, $timeout) {
    
     $scope.user = loginSingUp.checkLoginState()    
     
}])