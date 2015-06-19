# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('.new_comment').on 'submit', (e) ->
    e.preventDefault
    target = $(e.target)
    console.log(target)
    $.ajax({
      url: '/comments',
      method: 'post',
      dataType: 'json',
      data: target.serialize()
      })
      .done (data) ->
        content = "<div class='title-wrapper nested'><p class='title'>" + data.body + "</p></div>"
        target.parent().after(content)
        target.find('.comment-field').val("")
        $('.hidden-form').addClass('hidden')
        console.log "DONE"
      .fail (error) ->
        console.log(error)
    false

  $('.open-nested-form').on 'click', (e) ->
    e.preventDefault
    target = $(e.target)
    if target.next().hasClass('hidden')
      target.next().removeClass('hidden')
      false
    else
      target.next().addClass('hidden')
      false

