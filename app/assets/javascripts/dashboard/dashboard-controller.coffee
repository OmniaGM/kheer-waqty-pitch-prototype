define [
  'require',
  'angular',
  'config/constant'
], (require) ->
  angular = require 'angular'
  CONSTANT = require 'config/constant'

  angular
  .module("#{CONSTANT.nameSpace}.dashboard", [])
  .controller "#{CONSTANT.nameSpace}.dashboard.controller", ($http) ->
    this.tasks = []
    $http
      .get('/javascripts/dummy.json')
      .success (data) =>
        this.tasks = data
    this
    