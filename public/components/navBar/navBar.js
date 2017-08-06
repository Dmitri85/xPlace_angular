app.component('navBar', {
  templateUrl: 'components/navBar/navBar.html',
  bindings: {
    
  },
  controller: ['$scope','loginSingUp', function($scope, loginSingUp){
    loginSingUp.importPositionFromSql()
    $scope.text = () =>{
      let user = loginSingUp.checkLoginState();
      if(user){
        return `hello ${user.username}`
      }else{
        return 'Login'
      }
    }
    this.$onInit = () => {
      loginSingUp.checkLoginOnServer();
      if(loginSingUp.checkLoginState()){
        loginSingUp.conectagentToJobs()
      }
    }


  }]
});