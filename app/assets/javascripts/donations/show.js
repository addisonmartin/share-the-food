function initMapForShow(lat, lng)
{
  var coords = new google.maps.LatLng(lat, lng);

  var mapOptions = {
    center: coords,
    zoom: 14
  };

  var map = new google.maps.Map(document.getElementById('map'), mapOptions);

  var marker =  new google.maps.Marker({
    position: coords,
    map: map
  });
}
