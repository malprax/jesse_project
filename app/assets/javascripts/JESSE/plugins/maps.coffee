JESSE.namespace 'Maps', (() ->
  return {

    errorLocation: (address, dataTarget) ->
      geocoder = new google.maps.Geocoder();
      geocoder.geocode({ 'address': 'pacific ocean'}, (results, status) ->
        if (status == google.maps.GeocoderStatus.OK)
          JESSE.Maps.createMap(results[0].geometry.location.lat(), results[0].geometry.location.lng(), dataTarget)
          alert('lookup failure');
          JESSE.Maps.createLocation(address, dataTarget);
      )

    createLocation: (address, dataTarget) ->
      geocoder = new google.maps.Geocoder();
      geocoder.geocode({ 'address': address}, (results, status) ->
        if (status == google.maps.GeocoderStatus.OK)
          $('#place_latitude').val(results[0].geometry.location.lat())
          $('#place_longitude').val(results[0].geometry.location.lng())
          $('#push_to_database').val(true)
          $('#submit_button').click()
        else
          alert('no address found');
      )

    mapLookup: (dataTarget) ->
      geocoder = new google.maps.Geocoder();
      geocoder.geocode({ 'address': $('#place_address').val()}, (results, status) ->
        if (status == google.maps.GeocoderStatus.OK)
          JESSE.Maps.createMap(results[0].geometry.location.lat(), results[0].geometry.location.lng(), dataTarget)
        else
          alert('no address found');
      )

    createMap: (latitude, longitude, target) ->
      myLatlng = new google.maps.LatLng(latitude,longitude);
      # remove loading if maps set
      $('#' + target).html("")
      map = new google.maps.Map(document.getElementById(target), {
        center: myLatlng,
        scrollwheel: true,
        zoom: 12,
        zoomControl: true
        })

      marker = new google.maps.Marker({
        position: myLatlng,
        title:"Home"
        })

      marker.setMap(map)
  }
)(jQuery)
