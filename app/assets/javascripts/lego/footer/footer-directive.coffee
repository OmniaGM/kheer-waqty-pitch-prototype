define [
  'require',
  'angular',
  'config/constant'
], (require) ->
  angular = require 'angular'
  CONSTANT = require 'config/constant'

  angular
  .module("#{CONSTANT.nameSpace}.footer.directive", [])
  .controller("#{CONSTANT.nameSpace}.footer.controller", ($http, $scope) ->
    
  )
  .directive "footer", ->
    templateUrl: 'javascripts/lego/footer/footer.html',
    restrict: 'EA'
    controller: "#{CONSTANT.nameSpace}.footer.controller"
    controllerAs: 'footer'
