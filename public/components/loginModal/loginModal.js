app.component('loginModal', {
  templateUrl: 'components/loginModal/loginModal.html',
  bindings: {

  },
  controller: ['$scope', '$http','loginSingUp', function ($scope, $http, loginSingUp) {
    $scope.modal = null;
    this.modalClose = () =>{
      if(loginSingUp.checkLoginState()){
        $scope.modal = 'modal'
      }
      
    }
    this.submit = function (e) {
      e.preventDefault()
       loginSingUp.login(this.user, this.pass, ()=>{
        
      })

    }

  }]
});