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

  events:
    "click button" : "clickedButton"

  initialize: ->
    @model.on "change:score", => @scoreChanged()

  render: ->
    html = @template({
      full_name: @model.get('full_name'),
      score: @model.get('score')
    })
    $(@el).empty().append(html)

  clickedButton: ->
    score = @model.get('score')
    score = score + 1
    @model.set('score', score)

  scoreChanged: -> @render()


