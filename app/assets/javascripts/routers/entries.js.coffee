class RailsReferenceNew.Routers.Entries extends Backbone.Router
  routes: 
    '': 'index'
    'entries/:id': 'show'
    
    
  index: ->
    alert "home page"
    
  show: (id)->
    alert "Entry #{id}"
