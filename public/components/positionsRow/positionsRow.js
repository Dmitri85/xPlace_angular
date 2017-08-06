app.directive('postitionRow', function () {
  return {
    scope: {
      position: '='
    },
    templateUrl: 'components/positionsRow/positionsRow.html',
    controller: ['$scope', 'loginSingUp', 'moment', function ($scope, loginSingUp, moment) {

      $scope.$watch('position', () => {
        $scope.position.date = moment($scope.position.date, "YYYYMMDD").fromNow();
      })

      $scope.apply =(e) =>{
        let jobId = e.currentTarget.dataset.id
        loginSingUp.applyForJob(jobId);
      } 
      
    }],
  };
});