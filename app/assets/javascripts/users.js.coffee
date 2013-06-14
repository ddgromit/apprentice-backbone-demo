$ ->
  return if $(".users-page").length == 0

  collection = new BackboneDemo.Collections.Users(window.PAGEDATA.users_json)

  window.debugcollection = collection