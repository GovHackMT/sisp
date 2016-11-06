(function () {

  angular
    .module('app')
    .controller('MainController', [
      'navService', '$mdSidenav', '$mdBottomSheet', '$log', '$q', '$state', '$mdToast',
      MainController
    ]);

  function MainController(navService, $mdSidenav, $mdBottomSheet, $log, $q, $state, $mdToast) {
    var vm = this;

    vm.menuItems = [];
    vm.toggleItemsList = toggleItemsList;
    vm.selectItem = function () {
      $mdSidenav('left').toggle();
    }

    navService
      .loadAllItems()
      .then(function (menuItems) {
        vm.menuItems = [].concat(menuItems);
      });

    function toggleItemsList() {
      var pending = $mdBottomSheet.hide() || $q.when(true);

      pending.then(function () {
        $mdSidenav('left').toggle();
      });
    }

  }

})();
