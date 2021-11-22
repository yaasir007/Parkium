import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const initMapbox = () => {
    const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;

    const map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/yaasir007/ckw82y0v9b3jw14pabojmqf0s',
        });

    const markers = JSON.parse(mapElement.dataset.markers);
        markers.forEach((marker) => {
            const popup = new mapboxgl.Popup().setHTML(marker.info_window);
                new mapboxgl.Marker()
                .setLngLat([ marker.lng, marker.lat ])
                .setPopup(popup)
                .addTo(map);
        });

        const fitMapToMarkers = (map, markers) => {
            const bounds = new mapboxgl.LngLatBounds();
            markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
            map.fitBounds(bounds, { padding: 90, maxZoom: 10, duration: 0 });
            };

            fitMapToMarkers(map, markers);

        map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
            mapboxgl: mapboxgl }));
    }
};

export { initMapbox };