app.controller('agentCtrl', ['$scope', 'sqlMainService','loginSingUp','$timeout', function ($scope, sqlMainService, loginSingUp, $timeout) {
    



    $scope.updateCityId = (id) =>{
        $scope.cityID = id;
    }

    $timeout(()=>{
        $scope.user = loginSingUp.checkLoginState();
    },30)
    

    sqlMainService.importSkills((data) =>{
        $scope.skills =  data;
    })

    $scope.skillsToPost = []

    $scope.addSkill = () =>{
        $scope.skillsToPost.push(JSON.parse($scope.currentSkill));
        // console.log($scope.skillsToPost);
        
    }


    $scope.skillsToPost = loginSingUp.SecondImportSkillsForAgent();
    // $scope.$watch('skillsToPost', ()=>{
    //     $scope.skillsToPost = loginSingUp.SecondImportSkillsForAgent();
    // })


    $scope.post = (e) =>{
        e.preventDefault()
        loginSingUp.postSkills($scope.skillsToPost);
        loginSingUp.conectagentToJobs();
    }
    
    $scope.delete = (e) =>{
        $scope.skillsToPost = $scope.skillsToPost.filter((skill) =>{
            return e.currentTarget.innerHTML != skill.skill
        })        
    }

    loginSingUp.updateappliedPositionsToList((result)=>{
        $scope.positions = result;
    });

    // $scope.delete =(id) =>{
    //     loginSingUp.DeleteAppliedJob(id);
    //   }

   

}])