class RailsReferenceNew.Collections.Entries extends Backbone.Collection

  model: RailsReferenceNew.Models.Entry
  
  url: '/api/entries'
  
  drawWinner: ->
    winner = @shuffle()[0]
    if winner 
      winner.set(winner: true)
      winner.save()
