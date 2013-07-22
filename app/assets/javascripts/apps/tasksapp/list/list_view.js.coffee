@Unison.module "TasksApp.List", (List, App, Backbone, Marionette, $, _) ->

  class List.Layout extends Marionette.Layout
    template: "tasksapp/list/list_layout"