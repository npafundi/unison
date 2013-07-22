@Unison.module "TasksApp", (TasksApp, App, Backbone, Marionette, $, _) ->

  class TasksApp.Router extends Marionette.AppRouter


  API =
    list: ->
      new TaskApp.List.Controller

    edit: (id, tasklist) ->
      new TaskApp.Edit.Controller
        id: id
        tasklist: tasklist

    newTasklist: (region) ->
      new TaskApp.New.Controller
        region: region

  App.addInitializer ->
    new TaskApp.Router
      controller: API