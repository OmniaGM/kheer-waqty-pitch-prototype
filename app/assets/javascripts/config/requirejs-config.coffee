requirejs.config
  baseUrl: '/javascripts'
  deps: ['main']
  paths:
    angular: ["../lib/angularjs/angular"]
    bootstrap: ["../lib/bootstrap/js/bootstrap"]
    "angular-route": ["../lib/angularjs/angular-route"]
    jquery: ["../lib/jquery/jquery"]
    underscore: ["../lib/underscore-amd/underscore"]

  shim:
    underscore:
      exports: '_'
    jquery:
      exports: "jquery"
    angular:
      exports: "angular"
    bootstrap:
      deps: ["jquery"]
      exports: "bootstrap"
    "angular-route":
      deps: ["angular"]
      exports: "angular"
    