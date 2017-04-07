# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

loadCarousel = ->
  owl = $('.owl-carousel')
  owl.owlCarousel({
    loop: true,
    autoplay: true,
    autoplayTimeout: 2000,
    autoplayHoverPause: false,
    margin: 10,
    responsive : {
      480 : { items : 2  },
      768 : { items : 4  },
      1024 : { items : 6
      }
    }
  })

document.addEventListener('turbolinks:load', -> loadCarousel())

$(document).ready ->
  loadCarousel()

