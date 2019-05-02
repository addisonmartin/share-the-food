function initMapForList(donations) {

  var lat = 52.5;
  var lng = 0.125;

  if (donations.length != 0) {
    lat = donations[0].latitude;
    lng = donations[0].longitude;
  }

  var coords = new google.maps.LatLng(lat, lng);

  var mapOptions = {
    center: coords,
    zoom: 14
  };

  var map = new google.maps.Map(document.getElementById('map2'), mapOptions);

  for (i = 0; i < donations.length; i++) {
    var markerCoords = new google.maps.LatLng(donations[i].latitude, donations[i].longitude);
    var marker = new google.maps.Marker({
      position: markerCoords,
      map: map
    });
  }
}
