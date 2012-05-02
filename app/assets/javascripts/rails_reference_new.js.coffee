window.RailsReferenceNew =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: -> 
    new RailsReferenceNew.Routers.Entries()
    Backbone.history.start()

$(document).ready ->
  RailsReferenceNew.init()
