# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#subscrib_form').bind("ajax:success", (xhr, data, status) ->
    $('.help-block').html('You are successfully subscribed!')
  ).bind('ajax:error', (xhr, data, status, error) ->
    $('.help-block').html(data.responseJSON.errors)
  )
