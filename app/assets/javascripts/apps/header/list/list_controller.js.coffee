@Unison.module "HeaderApp.List", (List, App, Backbone, Marionette, $, _) ->

  class List.Controller extends Marionette.Controller

    initialize: ->
      listView = new List.Header
      @region.show listView
