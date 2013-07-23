@Unison.module "TasksApp.List", (List, App, Backbone, Marionette, $, _) ->

  class List.Empty extends Marionette.ItemView
    template: "tasksapp/list/_empty"
    tagName: "li"

  class List.Tasklist extends Marionette.ItemView
    template: "tasksapp/list/_tasklist"
    tagName: "li"

  class List.Collection extends Marionette.CollectionView
    template: "tasksapp/list/_tasklists"
    itemView: List.Tasklist
    emptyView: List.Empty