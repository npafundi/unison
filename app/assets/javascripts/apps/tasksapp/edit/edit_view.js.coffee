@Unison.module "TasksApp.Edit", (Edit, App, Backbone, Marionette, $, _) ->

  class Edit.Empty extends Marionette.ItemView
    template: "tasksapp/edit/_empty"
    tagName: "li"

  class Edit.Task extends Marionette.ItemView
    template: "tasksapp/edit/_task"
    tagName: "li"

  class Edit.Collection extends Marionette.CollectionView
    template: "tasksapp/edit/_tasks"
    itemView: Edit.Task
    emptyView: Edit.Empty