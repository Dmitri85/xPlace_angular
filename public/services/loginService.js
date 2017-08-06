app.factory('loginSingUp', ['$log', '$http', ($log, $http) => {
    const loginSingUp = {}

    let isLogged = false;
    let currentUser = {};
    let currentUserAgentSkills = [];
    let positionsForMe = []
    let appliedJobs = []
    let myPositions =[]

    loginSingUp.internalFuncSkillsToAgent = () => {
        $http({
            method: `GET`,
            url: `/import_agent_skils?id=${currentUser.id}`
        }).then(function successCallback(response) {
            currentUserAgentSkills = response.data;

        }, function errorCallback(response) {

        });
    }


    loginSingUp.login = (user, pass, callback) =>{
        $http({
        method: 'POST',
        data:{"userName": user, "password": pass},
        url: '/login'
      }).then(function successCallback(response) {
          callback(response)
            loginSingUp.updateCurrentUser(response)
            loginSingUp.internalFuncSkillsToAgent();
            loginSingUp.importPositionFromSql();
            loginSingUp.importPositionApplied();
        // this callback will be called asynchronously
        // when the response is available

      }, function errorCallback(response) {
  
      });
    }

    loginSingUp.checkLoginOnServer = () => {
        $http({
            method: 'POST',
            url: '/login_check'
        }).then(function successCallback(response) {
            if (typeof response.data == 'object') {
                isLogged = true;
                currentUser = response.data;
                loginSingUp.internalFuncSkillsToAgent();
                loginSingUp.importPositionFromSql();
                loginSingUp.importPositionApplied();
                
            }
        }, function errorCallback(response) {
      
        });
    }

    loginSingUp.checkLoginState = () => {
        if (isLogged) {
            return currentUser
        } else {
            return null
        }
    }

    loginSingUp.updateCurrentUser = (user) => {
        if (user.data) {
            isLogged = user.data.log
            currentUser = user.data.user
            loginSingUp.internalFuncSkillsToAgent();
            loginSingUp.importPositionFromSql();
            loginSingUp.importPositionApplied();
        } else {
            $log.info('invalid login details!!!')
        }
    }

    loginSingUp.registerNewUserToServer = (username, firstname, lastname, password, email, about, company, maxDist, cityID) => {
        $http({
            method: 'POST',
            data: { username, firstname, lastname, password, email, about, company, maxDist, cityID },
            url: '/register'
        }).then(function successCallback(response) {
            $http({
                method: 'POST',
                data: { "userName": username, "password": password },
                url: '/login'
            }).then(function successCallback(response) {
                loginSingUp.updateCurrentUser(response)
             

            }, function errorCallback(response) {
  
            });

        }, function errorCallback(response) {
            
        });
    }

    loginSingUp.SecondImportSkillsForAgent = () => {
        return currentUserAgentSkills;
    }

    loginSingUp.postSkills = (skillsToPost) =>{
         $http({
                method: 'PUT',
                data: {skillsToPost, currentUser},
                url: '/post_skills'
            }).then(function successCallback(response) {
                loginSingUp.internalFuncSkillsToAgent();
              
            }, function errorCallback(response) {
         
            });
    }

    loginSingUp.conectagentToJobs = () =>{
        $http({
            method: `GET`,
            url: `/conect_agent_to_jobs?id=${currentUser.id}`
        }).then(function successCallback(response) {

        }, function errorCallback(response) {
            
        });
    }

    loginSingUp.importPositionFromSql = () =>{
        if(isLogged){
            $http({
                method: `GET`,
                url: `/get_positions_logged?id=${currentUser.id}`
            }).then(function successCallback(response) {
                positionsForMe =  response.data
            }, function errorCallback(response) {
              
            });
        }else{
            $http({
                method: `GET`,
                url: `/get_positions`
            }).then(function successCallback(response) {
                positionsForMe =  response.data
            }, function errorCallback(response) {
              
            })
        }
    }

    loginSingUp.importPosition = (callback) =>{
        callback(positionsForMe)
        // return positionsForMe
    }

    loginSingUp.applyForJob = (jobId) =>{
        $http({
            method: 'PUT',
            url: '/apply_job',
            data:{"jobId":jobId, "userId":currentUser.id}
        }).then(function successCallback(response) {
  
        }, function errorCallback(response) {
      
        });
    }

    loginSingUp.importPositionApplied = () =>{
        $http({
            method: `GET`,
            url: `/import_applied_jobs?id=${currentUser.id}`
        }).then(function successCallback(response) {
            appliedJobs =  response.data
        }, function errorCallback(response) {
            
        });
    }

    loginSingUp.updateappliedPositionsToList = (callback) =>{
        callback(appliedJobs)
    }

    loginSingUp.DeleteAppliedJob = (id) =>{
        $http({
            method: `POST`,
            url: `/delete_applied_jobs`,
            data:{"id":id, "userId":currentUser.id}
        }).then(function successCallback(response) {
            // console.log(response.data);
            appliedJobs =  response.data
        }, function errorCallback(response) {
            
        });
    }

    loginSingUp.importPositionIPost = () =>{
        $http({
            method: `GET`,
            url: `/import_My_jobs?id=${currentUser.id}`
        }).then(function successCallback(response) {
            myPositions =  response.data
        }, function errorCallback(response) {
            
        });
    }

    loginSingUp.updatePositionIPostToList = (callback) =>{
        callback(myPositions)
    }

    


    return loginSingUp
}])