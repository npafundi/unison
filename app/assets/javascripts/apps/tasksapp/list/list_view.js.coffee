@Unison.module "TasksApp.List", (List, App, Backbone, Marionette, $, _) ->

  class List.Empty extends Marionette.ItemView
    template: "tasksapp/list/_empty"
    tagName: "li"

  class List.Tasklist extends Marionette.ItemView
    template: "tasksapp/list/_tasklist"
    tagName: "li"

    initialize: ->
      console.log "item view"
      console.log @

  class List.Collection extends Marionette.CollectionView
    template: "tasksapp/list/_tasklists"
    itemView: List.Tasklist
    emptyView: List.Empty

    initialize: ->
      console.log "collection view"