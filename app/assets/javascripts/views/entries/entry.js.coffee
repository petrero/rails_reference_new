class RailsReferenceNew.Views.Entry extends Backbone.View

  template: JST['entries/entry']
  tagName: 'li'
  
  initialize: -> 
    @model.on('change', @render, this)
  
  render: ->
    $(@el).html(@template(entry: @model))
    this
    
  
