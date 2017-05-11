# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

bindEvents = ->
  $('.catalogue').hover( ->
    $(this).find('.inner-name').fadeIn()
  )

  $('.catalogue').mouseleave( ->
    $(this).find('.inner-name').fadeOut()
  )

document.addEventListener('turbolinks:load', -> bindEvents())

