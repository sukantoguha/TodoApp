TodoApp.Views.Todos ||= {}

class TodoApp.Views.Todos.IndexView extends Backbone.View
  template: JST["backbone/templates/todos/index"]

  initialize: () ->
    @collection.bind('reset', @addAll)

  addAll: () =>
    @collection.each(@addOne)

  addOne: (todo) =>
    view = new TodoApp.Views.Todos.TodoView({model : todo})
    @$("tbody").append(view.render().el)

  render: =>
    @$el.html(@template(todos: @collection.toJSON() ))
    @addAll()

    return this
