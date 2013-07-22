@Unison.module "FooterApp.Show", (Show, App, Backbone, Marionette, $, _) ->

  class Show.Controller extends Marionette.Controller

    initialize: ->
      console.log "controller init"
      showView = new Show.Footer
      App.footerRegion.show showView
