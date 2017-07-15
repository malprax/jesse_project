JESSE.namespace 'Address', (() ->
  return{
    onEventComponent: ->
      $(document).on 'change', '#pull_from_address', ->
        JESSE.Maps.getLocation('#maps_wrapper')
  }
)(jQuery)
