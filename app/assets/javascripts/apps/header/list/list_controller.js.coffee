@Unison.module "HeaderApp.List", (List, App, Backbone, Marionette, $, _) ->

  class List.Controller extends Marionette.Controller

    initialize: ->
      console.log "controller init"
      listView = new List.Header
      App.headerRegion.show listView
