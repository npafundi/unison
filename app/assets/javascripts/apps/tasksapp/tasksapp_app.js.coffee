@Unison.module "TasksApp", (TasksApp, App, Backbone, Marionette, $, _) ->

  class TasksApp.Router extends Marionette.AppRouter
    appRoutes:
      "tasklists" : "list"
      "tasklists/:id/edit" : "edit"

  API =
    list: ->
      new TasksApp.List.Controller

    edit: (id, tasklist) ->
      new TasksApp.Edit.Controller
        id: id
        tasklist: tasklist

    newTasklist: (region) ->
      new TasksApp.New.Controller
        region: region

  App.addInitializer ->
    new TasksApp.Router
      controller: API