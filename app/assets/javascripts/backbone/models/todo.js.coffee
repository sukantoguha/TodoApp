class TodoApp.Models.Todo extends Backbone.Model
  paramRoot: 'todo'

  defaults:
    name: null
    content: null

class TodoApp.Collections.TodosCollection extends Backbone.Collection
  model: TodoApp.Models.Todo
  url: '/todos'
