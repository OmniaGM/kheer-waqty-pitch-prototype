#global require, requirejs
"use strict"
define [
  'require',
  'jquery',
  'bootstrap',
  'angular',
  'config/constant',
  'dashboard/dashboard-controller',
  'task/task-controller',
  'lego/footer/footer-directive',
  'underscore',
  'angular-route'
], (require) ->
  $ = require 'jquery'
  bootstrap = require 'bootstrap'
  angular = require 'angular'
  CONSTANT = require 'config/constant'

  # Declare app level module which depends on filters, and services
  angular
  .module("#{CONSTANT.nameSpace}", [
    "ngRoute",
    "#{CONSTANT.nameSpace}.dashboard",
    "#{CONSTANT.nameSpace}.task",
    "#{CONSTANT.nameSpace}.footer.directive",
  ])
  .config [
    "$routeProvider"
    ($routeProvider) ->
      $routeProvider.when "/",
        templateUrl: "javascripts/dashboard/dashboard-template.html"
        controller: "#{CONSTANT.nameSpace}.dashboard.controller"
        controllerAs: "tasksList"
      $routeProvider.when "/tasks/:id",
        templateUrl: "javascripts/task/task-template.html"
        controller: "#{CONSTANT.nameSpace}.task.controller"
        controllerAs: "taskAppController"

      $routeProvider.otherwise redirectTo: "/"
  ]

  angular
  .bootstrap document, ["#{CONSTANT.nameSpace}"]
  return
