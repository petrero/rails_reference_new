class RailsReferenceNew.Routers.Entries extends Backbone.Router
  routes: 
    '': 'index'
    'entries/:id': 'show'
    
    
  index: ->
    view = new RailsReferenceNew.Views.EntriesIndex()
    $('#container').html(view.render().el)
    
  show: (id)->
    alert "Entry #{id}"
