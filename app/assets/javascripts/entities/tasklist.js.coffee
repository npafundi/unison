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

    #NOTE: This is weird naming...it should perhaps be getTaskList,
    #      but we have tasklists and task lists...ugh
    getTasklist: (id) ->
      tasklist = new Entities.Tasklist
        id: id
      tasklist.fetch()
      tasklist


  App.reqres.setHandler "tasklistCollection:entities", ->
    API.getTasklistCollection()

  App.reqres.setHandler "tasklist:entities", (id) ->
    API.getTasklist id