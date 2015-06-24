console.log("hello there")

/*
var markers = [
  {"lat":50.4662975,"lng":4.9042201,"infowindow":"Rochers de Marche-les-Dames","area_id":1},
  {"lat":50.2236854,"lng":4.8867214,"infowindow":"Rochers de Freyr","area_id":2},
  {"lat":50.3798,"lng":4.35075,"infowindow":"Rocher de Landelies","area_id":3}
];
*/

$(document).on('ready', function() {
  var mapOptions = { mapTypeId: google.maps.MapTypeId.SATELLITE };
  var handler = Gmaps.build('Google');

  function displayOnMap(position){

    var myPositionMarker = {
      lat: position.coords.latitude,
      lng: position.coords.longitude,
      infowindow: 'Your location',
      picture: {
        url: image_icon,
        width: 36,
        height: 36
      }
    }

    markers.push(myPositionMarker);

    var markersHandled = handler.addMarkers(markers);

    handler.bounds.extendWith(markersHandled);
    handler.fitMapToBounds();

    // handler.map.centerOn(myPositionMarker);
  };

  handler.buildMap({
    provider: mapOptions,
    internal: {id: 'geolocation'}},
    function(){
    if(navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(displayOnMap);
    } else {
      window.location = "http://localhost:3000/";
    }
   });

  // handler.buildMap({ provider: mapOptions, internal: {id: 'map'}}, function(){
  //   var markers = handler.addMarkers();
  //   handler.bounds.extendWith(markers);
  //   handler.fitMapToBounds();
  // });


})
