// init_mapbox.js

import "mapbox-gl/dist/mapbox-gl"
import mapboxgl from 'mapbox-gl';

const mapElement = document.getElementById('map'); // picks the div where the map will be displayed

const initMapbox = () => {

  const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 25, duration: 0 });
  };

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/harveyswick/ckeb63qqf0aqi19obtw1ef9w7'
    });

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
