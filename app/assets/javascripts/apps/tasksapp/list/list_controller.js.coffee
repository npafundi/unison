@Unison.module "TasksApp.List", (List, App, Backbone, Marionette, $, _) ->

  class List.Controller extends Marionette.Controller

    initialize: ->
      console.log("tasksapp list_controller init")
      tasklistCollection = App.request "tasklistCollection:entities"

      console.log(tasklistCollection)

      taskListView = @getTaskListView tasklistCollection
      App.mainRegion.show taskListView

    getTaskListView: (tasklistCollection) ->
      new List.Collection
        collection: tasklistCollection