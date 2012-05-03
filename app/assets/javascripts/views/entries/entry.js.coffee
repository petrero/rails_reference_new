class RailsReferenceNew.Views.Entry extends Backbone.View

  template: JST['entries/entry']
  tagName: 'li'
  
  render: ->
    $(@el).html(@template())
    this
    
  
