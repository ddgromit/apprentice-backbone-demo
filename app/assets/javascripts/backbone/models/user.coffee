class BackboneDemo.Models.User extends Backbone.Model

class BackboneDemo.Collections.Users extends Backbone.Collection
  model: BackboneDemo.Models.User

  all_names: ->
    @map (user) -> user.get('full_name')