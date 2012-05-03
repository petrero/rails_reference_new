window.RailsReferenceNew =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: -> 
    new RailsReferenceNew.Routers.Entries()
    Backbone.history.start(pushState: true)

$(document).ready ->
  RailsReferenceNew.init()
