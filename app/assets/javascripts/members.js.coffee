# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $("#member_membership_number").blur ->
    if isValidMembershipNumber(@value)
      $("#membership_number_error").text("")
    else
      $("#membership_number_error").text("Invalid membership number")
