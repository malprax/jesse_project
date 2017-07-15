# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
onEventComponent: ->
      $(document).on 'change', '#pull_from_address', ->
        PHYSIALITY.Maps.getLocation('#maps_wrapper')
