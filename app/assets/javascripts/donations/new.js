function initMapForNew() {
  var lat = document.getElementById('donation_latitude').value;
  var lng = document.getElementById('donation_longitude').value;

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
}
