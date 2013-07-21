@Unison = do (Backbone, Marionette) ->

  App = new Marionette.Application

  console.log "Unison started"

  App.addRegions
    headerRegion: "#header-region"
    mainRegion: "#main-region"
    footerRegion: "#footer-region"

  App