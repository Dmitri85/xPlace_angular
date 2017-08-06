app.controller('positionsCtrl', ['$scope', 'sqlMainService','loginSingUp','$timeout', function ($scope, sqlMainService, loginSingUp, $timeout) {
    
    $scope.company = '';
    $scope.originalPositions = [];

    loginSingUp.importPosition((result)=>{
        $scope.positions = result;
        $scope.originalPositions = result;
    });


    // var uniqEs6 = (arrArg) => {
    //     return arrArg.filter((elem, pos, arr) => {
    //         return arr.indexOf(elem) == pos;
    //     });
    // }

    sqlMainService.importSkills((result) =>{
        $scope.skills = result;
        
    });

    $scope.skill = '';

    $scope.search = () =>{  
        $scope.positions = $scope.originalPositions.filter((position) =>{
            let skillBol = false
            for(let skill of position.skills){
                if(skill.skill.includes($scope.skill)){
                    skillBol = true
                    break
                }
            }
            return position.company.includes($scope.company) && skillBol;
        })
    }

}])