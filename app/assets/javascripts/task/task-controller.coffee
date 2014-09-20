define [
  'require',
  'angular',
  'config/constant'
], (require) ->
  angular = require 'angular'
  CONSTANT = require 'config/constant'

  angular
  .module("#{CONSTANT.nameSpace}.task", [])
  .controller "#{CONSTANT.nameSpace}.task.controller", ($http, $routeParams) ->
    this.id = $routeParams.id
    $http
      .get('/javascripts/dummy.json')
      .success (data) =>
        _.filter data, (item)=>
          this.task = item if item.id is this.id
    this