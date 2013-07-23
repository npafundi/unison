@Unison.module "TasksApp.Edit", (Edit, App, Backbone, Marionette, $, _) ->

  class Edit.Controller extends Marionette.Controller

    initialize: (options) ->
      { id, tasklist } = options
      console.log "tasksapp edit_controller init" 
      
      tasklist = App.request "tasklist:entities", id

      console.log tasklist

      taskListView = @getTaskListView tasklist
      App.subRegion.show taskListView

    getTaskListView: (tasklist) ->
      new Edit.Collection
        collection: tasklist