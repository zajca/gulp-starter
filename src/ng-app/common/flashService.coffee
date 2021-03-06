module = angular.module( 'FlashService', [])
module.factory("FlashService", ["$rootScope",($rootScope) ->
  show: (message,type) ->
    $rootScope.alerts = $rootScope.alerts || []
    flash = {}
    if (typeof message is "string")
      flash.msg = message
    else
      if (message.flash?)
        flash.msg = message.flash
      else
        if (message.data.flash?)
          flash.msg = message.data.flash
        else
          flash.msg = "Nastala neočekávaná chyba, prosím opakujte akci znovu"

    flash.type = type
    $rootScope.alerts.push(flash)

  clear: (index) ->
    if index is undefined
      $rootScope.alerts = []
    $rootScope.alerts.splice(index, 1)
])