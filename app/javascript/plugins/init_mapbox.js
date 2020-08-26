// init_mapbox.js
import "mapbox-gl/dist/mapbox-gl"
import mapboxgl from 'mapbox-gl';

// picks the div where the map will be displayed
const mapElement = document.getElementById('map');

// Zooms the map based on the markers
const fitMapToMarkers = (map, markers) => {
const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ])); // For each marker, extend the zoom
  map.fitBounds(bounds, { padding: 70, maxZoom: 25, duration: 0 });     // and add padding. Duration gives a zoom-in effect.
};

const initMapbox = () => {

  // Builds the map (only if there's a div#map to inject into).
  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/harveyswick/ckeb63qqf0aqi19obtw1ef9w7' // Add the map's stylesheet here
    });

  // Adds the infoWindow popup
  const markers = JSON.parse(mapElement.dataset.markers);
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow.content);
    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
    });

  fitMapToMarkers(map, markers);
  }
};

export { initMapbox };
