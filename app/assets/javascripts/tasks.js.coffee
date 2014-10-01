# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->

  # To save the book without reloading the page

  $('#button').click ->

    $(this).parents("form").submit()



  $('form#task').on 'ajax:success',  (xhr, data, status) ->

    $('#list').append(data).show()

