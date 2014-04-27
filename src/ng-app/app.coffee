#LIBS
angular = require "angular"
require "angular-ui-router"
require "./../../vendor/angular-sanitize/angular-sanitize.js"
require "./../../vendor/angular-animate/angular-animate.js"
require "./../../vendor/angular-touch/angular-touch.js"
require "./../../vendor/angular-gestures/gestures.js"
require "./../../vendor/angular-ui-utils/ui-utils.js"
require "./../../vendor/angular-strap/dist/angular-strap.js"
require "./../../vendor/angular-strap/dist/angular-strap.tpl.js"

#COMMON
require "./common/device"
require "./common/flashService"
#require "./common/preventScrollDirective"
require "./common/randomHelper"
require "./common/sessionService"
require "./common/spinnerService"
require "./common/titleService"
#require "./app/common/api"

#LOAD MODULES
module = angular.module("app", [
  "ui.router"
  "ngAnimate"
  "ngTouch"
#  "templates"
  "device"
  "angular-gestures"
#  "API"
  "random"
#  "preventScroll"
  "titleService"
#  "app.appctrl"
  "SessionService"
#  "pascalprecht.translate"
#  "i18n"
  "FlashService"
  "SpinnerService"
])

#LOAD VARIABLES
#module.constant "FBVARS", require("./fbConfig")
#module.constant "CONF", require("./config")

#APP CONFIG
#module.config require("./appConfig")

#HTTP INTERCEPTOR
module.config require("./common/httpInterceptor")

#SET UP PAGE TITLE SUFIX
module.run ["titleService",(titleService) ->
  titleService.setSuffix " | CPZP"
]

#FLASH MESSAGE CONTROLLER
module.controller "FlashCtrl", ["$rootScope", "$scope", "FlashService",($rootScope, $scope, FlashService) ->
  $scope.close = (index) ->
    FlashService.clear(index)
]