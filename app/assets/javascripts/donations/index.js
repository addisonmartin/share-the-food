function initMapForList() {

  var coords = new google.maps.LatLng(10.0, 14.0);

  var mapOptions = {
    center: coords,
    zoom: 14
  };

  var map = new google.maps.Map(document.getElementById('map3'), mapOptions);

  for (i = 0; i < gon.donations_list.length; i++) {
    var markerCoords = new google.maps.LatLng(gon.donations_list[i].latitude, gon.donations_list[i].longitude);
    var marker = new google.maps.Marker({
      position: markerCoords,
      map: map
    });
  }

  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function (position) {
      initialLocation = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
      map.setCenter(initialLocation);
    });
  }
}
