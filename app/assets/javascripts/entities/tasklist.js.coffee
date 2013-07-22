@Unison.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

  class Entities.Tasklist extends Backbone.Model
    urlRoot: -> Routes.tasklists_path()

  class Entities.TasklistCollection extends Backbone.Collection
    model: Entities.Tasklist
    url: -> Routes.tasklists_path()

  API = 
    getTasklistCollection: ->
      tasklistCollection = new Entities.TasklistCollection
      tasklistCollection.fetch
        reset: true
      tasklistCollection

  App.reqres.setHandler "tasklistCollection:entities", ->
    API.getTasklistCollection()