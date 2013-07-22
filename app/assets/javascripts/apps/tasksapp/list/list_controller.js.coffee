@Unison.module "TasksApp.List", (List, App, Backbone, Marionette, $, _) ->

  class List.Controller extends Marionette.Controller

    initialize: ->
      console.log("tasksapp list_controller init")
      tasklistCollection = App.request "tasklistCollection:entities"
      
      console.log(tasklistCollection)

      taskListView = new List.Tasklist
      App.mainRegion.show taskListView