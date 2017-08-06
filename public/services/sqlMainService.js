app.factory('sqlMainService', ['$log','$http','loginSingUp',($log,$http,loginSingUp) => {
    const service = {}



    service.importCities = (callback) =>{
         $http({
                method: 'GET',
                url: '/import_cities'
            }).then(function successCallback(response) {
                callback(response.data);
              
              
            }, function errorCallback(response) {
                // called asynchronously if an error occurs
                // or server returns response with an error status.
            });
    }

    service.importSkills = (callback) =>{
         $http({
                method: 'GET',
                url: '/import_skills'
            }).then(function successCallback(response) {
                callback(response.data);
              
              
            }, function errorCallback(response) {
                // called asynchronously if an error occurs
                // or server returns response with an error status.
            });
    }

    service.postJob = (title, description, cityID, skillsToPost) =>{
        let user = loginSingUp.checkLoginState();
         $http({
                method: 'PUT',
                data: {title, description, cityID, skillsToPost, user},
                url: '/post_job'
            }).then(function successCallback(response) {
              
            }, function errorCallback(response) {
                // called asynchronously if an error occurs
                // or server returns response with an error status.
            });
    }


    return service
}])