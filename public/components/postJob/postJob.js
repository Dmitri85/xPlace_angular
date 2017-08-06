app.controller('postJobsCtrl', ['$scope', 'sqlMainService','loginSingUp','$timeout', function ($scope, sqlMainService, loginSingUp, $timeout) {
    

    // $scope.$watch('cityID', function () {
    //     console.log($scope.cityID);
        
    // })

    $scope.updateCityId = (id) =>{
        $scope.cityID = id;
    }

    $timeout(()=>{
        $scope.user = loginSingUp.checkLoginState();
    },30)
    
    sqlMainService.importCities((data) => {
        $scope.cities = data;
    });

    sqlMainService.importSkills((data) =>{
        $scope.skills =  data;
    })

    $scope.skillsToPost = []

    $scope.addSkill = () =>{
        $scope.skillsToPost.push(JSON.parse($scope.currentSkill));
    }

    $scope.delete = (e) =>{
        $scope.skillsToPost = $scope.skillsToPost.filter((skill) =>{
            return e.currentTarget.innerHTML != skill.skill
        })        
    }
    
    $scope.post = (e) =>{
        e.preventDefault()
        sqlMainService.postJob( $scope.title,
                                $scope.description,
                                $scope.cityID, 
                                $scope.skillsToPost);
    }

     loginSingUp.updateappliedPositionsToList((result)=>{
        $scope.positions = result;
    });

}])