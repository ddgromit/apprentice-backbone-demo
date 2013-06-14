$ ->
  return if $(".users-page").length == 0

  collection = new BackboneDemo.Collections.Users(window.PAGEDATA.users_json)

  window.debugcollection = collection

  view = new BackboneDemo.Views.Users
    collection: collection
    el: $(".users-container")
  view.render()
