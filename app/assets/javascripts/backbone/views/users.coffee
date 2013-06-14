class BackboneDemo.Views.Users extends Backbone.View
  initialize: ->

  render: ->
    $ul = $("<ul></ul>")
    @collection.each (user) =>
      view = new BackboneDemo.Views.User
        model: user
      view.render()
      $ul.append(view.el)
    $(@el).append($ul)

class BackboneDemo.Views.User extends Backbone.View
  template: JST['backbone/templates/user']

  initialize: ->

  render: ->
    html = @template({
      full_name: @model.get('full_name')
    })
    $(@el).append(html)
