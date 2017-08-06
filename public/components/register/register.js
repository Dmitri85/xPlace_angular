app.controller('registerCtrl', ['$scope', 'sqlMainService','loginSingUp', function ($scope, sqlMainService, loginSingUp) {
    
    sqlMainService.importCities((data) => {
        $scope.cities = data;
    });

    $scope.close = false;

    // $scope.$watch('cityID', function(){
    //     console.log($scope.cityID);
        
    // })

    $scope.registerNewUser = (e) =>{
        e.preventDefault();
        loginSingUp.registerNewUserToServer($scope.username, 
                                    $scope.firstname, 
                                    $scope.lastname, 
                                    $scope.password,
                                    $scope.mail, 
                                    $scope.about,
                                    $scope.company, 
                                    $scope.maxDist, 
                                    $scope.cityID)
        
        if(loginSingUp.checkLoginState()){
            $scope.close = true
        }
    }
}])