function initMapForNew() {
  var lat = document.getElementById('donation_latitude').value;
  var lng = document.getElementById('donation_longitude').value;

  if (!lat || !lng){
        lat=51.5;
        lng=-0.125;
        document.getElementById('donation_latitude').value = lat;
        document.getElementById('donation_longitude').value = lng;
    }

  var coords = new google.maps.LatLng(lat, lng);

  var mapOptions = {
    center: coords,
    zoom: 14
  };

  var map = new google.maps.Map(document.getElementById('map2'), mapOptions);

  var marker = new google.maps.Marker({
    position: coords,
    animation: google.maps.Animation.DROP,
    map: map,
    draggable: true
  });

  document.getElementById('donation_latitude').onchange = refreshMarker;
  document.getElementById('donation_longitude').onchange = refreshMarker;

  function refreshMarker() {
    var lat = document.getElementById('donation_latitude').value;
    var lng = document.getElementById('donation_longitude').value;

    var coords = new google.maps.LatLng(lat, lng);

    marker.setPosition(coords);
    map.setCenter(marker.getPosition());
  }

  marker.addListener('drag', function() {
    coords = marker.getPosition();
    newLat=(Math.round(coords.lat()*1000000))/1000000;
    newLng=(Math.round(coords.lng()*1000000))/1000000;

    document.getElementById('donation_latitude').value = newLat;
    document.getElementById('donation_longitude').value = newLng;
  });

  marker.addListener('dragend', function() {
    map.panTo(marker.getPosition());
  });
}
