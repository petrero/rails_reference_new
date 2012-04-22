# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  if $('#products').length
    new ProductsPager()
    
class ProductsPager
  constructor: ->
    $(window).scroll(@check)
    
  check: => 
    if @nearBottom()
      $(window).unbind('scroll', @check)
      $.getJSON($('#products').data('json-url'), @render)
      
  nearBottom: =>
    $(window).scrollTop() > $(document).height() - $(window).height() - 50  
    
  render: (products)=>
    alert products
