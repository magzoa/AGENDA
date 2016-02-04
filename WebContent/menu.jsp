<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="lib/bootstrap-3.3.5/css/bootstrap.css">
<script type="text/javascript" src="lib/angular/angular.js"></script>
</head>
<body>


<script type="text/javascript">

angular.module('MyApp')
.config(function($mdIconProvider) {
  $mdIconProvider
    .iconSet("call", 'img/icons/sets/communication-icons.svg', 24)
    .iconSet("social", 'img/icons/sets/social-icons.svg', 24);
})
.controller('WidthDemoCtrl', DemoCtrl);

function DemoCtrl($mdDialog) {
  var vm = this;

  this.announceClick = function(index) {
    $mdDialog.show(
      $mdDialog.alert()
        .title('You clicked!')
        .content('You clicked the menu item at index ' + index)
        .ok('Nice')
    );
  };
}



</script>


<style type="text/css">

.menudemoMenuWidth .md-menu-demo {
  padding: 24px; }
.menudemoMenuWidth .menu-demo-container {
  min-height: 200px; }
</style>


<div class="md-menu-demo menudemoMenuWidth" ng-controller="WidthDemoCtrl as ctrl" style="min-height: 400px" ng-cloak="" ng-app="MyApp">
  <div class="menu-demo-container" layout-align="center center" layout="column">
    <h2 class="md-title">Different Widths</h2>
    <p><code>md-menu-content</code> may specify a <code>width</code> attribute which will follow the <a href="http://www.google.com/design/spec/components/menus.html#menus-specs">official spec</a>.</p>
    <div class="menus" layout-wrap="" layout="row" layout-fill="" layout-align="space-between center">
      <div layout="column" flex="33" flex-sm="100" layout-align="center center">
        <p>Wide menu (<code>width=6</code>)</p>
        <md-menu md-offset="0 -7">
          <md-button aria-label="Open demo menu" class="md-icon-button" ng-click="$mdOpenMenu($event)">
            <md-icon md-menu-origin="" md-svg-icon="call:phone"></md-icon>
          </md-button>
          <md-menu-content width="6">
            <md-menu-item ng-repeat="item in [1, 2, 3]">
              <md-button ng-click="ctrl.announceClick($index)"> <span md-menu-align-target="">Option</span> {{item}} </md-button>
            </md-menu-item>
          </md-menu-content>
        </md-menu>
      </div>
      <div layout="column" flex-sm="100" flex="33" layout-align="center center">
        <p>Medium menu (<code>width=4</code>)</p>
        <md-menu md-offset="0 -7">
          <md-button aria-label="Open demo menu" class="md-icon-button" ng-click="$mdOpenMenu($event)">
            <md-icon md-menu-origin="" md-svg-icon="call:email"></md-icon>
          </md-button>
          <md-menu-content width="4">
            <md-menu-item ng-repeat="item in [1, 2, 3]">
              <md-button ng-click="ctrl.announceClick($index)"> <span md-menu-align-target="">Option</span> {{item}} </md-button>
            </md-menu-item>
          </md-menu-content>
        </md-menu>
      </div>
      <div layout="column" flex="33" flex-sm="100" layout-align="center center">
        <p>Small menu (<code>width=2</code>)</p>
        <md-menu md-offset="0 -7">
          <md-button aria-label="Open demo menu" class="md-icon-button" ng-click="$mdOpenMenu($event)">
            <md-icon md-menu-origin="" md-svg-icon="call:chat"></md-icon>
          </md-button>
          <md-menu-content width="2">
            <md-menu-item ng-repeat="item in [1, 2, 3]">
              <md-button ng-click="ctrl.announceClick($index)"> <span md-menu-align-target="">Option</span> {{item}} </md-button>
            </md-menu-item>
          </md-menu-content>
        </md-menu>
      </div>
    </div>
  </div>
</div>




</body>
</html>