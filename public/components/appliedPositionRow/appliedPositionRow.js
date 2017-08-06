app.directive('appliedPositions', function () {
  return {
    scope: {
      position: '=',
      actionFunc:'&'
    },
    templateUrl: 'components/appliedPositionRow/appliedPositionRow.html',
    controller: ['$scope', 'loginSingUp', 'moment', function ($scope, loginSingUp, moment) {

      $scope.$watch('position', () => {
        $scope.position.date = moment($scope.position.date, "YYYYMMDD").fromNow();
      })

      $scope.delete =(e) =>{
        let jobId = e.currentTarget.dataset.id
        loginSingUp.DeleteAppliedJob(jobId);
      } 

    //   $scope.delete = (e) =>{
    //     let jobId = e.currentTarget.dataset.id
    //     $scope.actionFunc({id:jobId})
    //   }

      
    }],
  };
});