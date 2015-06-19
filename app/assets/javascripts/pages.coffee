# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('.post-upvote').on 'click', (e) ->
    e.preventDefault()
    console.log("CLICKED")
    target = $(e.target)
    console.log(target)
    postId = $(this).data('id')
    $.ajax({
      url: "/posts/" + postId + "/upvote",
      method: "GET",
      data: {id: postId},
      dataType: 'json'
    })
    .done (data) ->
      console.log data
      target.parent().parent().next().find('.upvote-holder').html(data)
    .fail (error) ->
      console.log error
