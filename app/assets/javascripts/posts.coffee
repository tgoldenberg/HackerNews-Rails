# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('.open-nested-form').on 'click', (e) ->
    e.preventDefault
    target = $(e.target)
    if target.next().hasClass('hidden')
      target.next().removeClass('hidden')
      false
    else
      target.next().addClass('hidden')
      false
