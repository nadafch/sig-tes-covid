<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" 
  integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

  <script src="https://api.mapbox.com/mapbox-gl-js/v2.2.0/mapbox-gl.js"></script>
  <link href="https://api.mapbox.com/mapbox-gl-js/v2.2.0/mapbox-gl.css" rel="stylesheet" />

  <script src="https://api.mapbox.com/mapbox.js/v3.3.1/mapbox.js"></script>
  <link href="https://api.mapbox.com/mapbox.js/v3.3.1/mapbox.css" rel="stylesheet" />

  <title>SIG</title>
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Exo+2:wght@300&display=swap" rel="stylesheet">
  <script src="https://api.tiles.mapbox.com/mapbox-gl-js/v2.2.0/mapbox-gl.js"></script>
  <link href="https://api.tiles.mapbox.com/mapbox-gl-js/v2.2.0/mapbox-gl.css" rel="stylesheet" />
  <style>
    .marker {
      background-image: url('icon.png');
      background-size: cover;
      width: 20px;
      height: 30px;
      border-radius: 10%;
      cursor: pointer;
    }
    .mapboxgl-popup {
      max-width: 200px;
    }
    .mapboxgl-popup-content {
      text-align: center;
      font-family: 'Open Sans', sans-serif;
    }
  </style>
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #283b4e; padding-left: 10px">
    <a class="navbar-brand" href="#"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item active">
          <a class="nav-link" href="#"> Home </a>
        </li>
          <a class="nav-link" href="pages/login.html">Login</a>
        </li>
      </ul>
    </div>
  </nav>

  <div style="text-align:center;padding: 10px; background-color: lightblue; font-family: 'Exo 2', sans-serif;">
    <?php include "aksi/koneksi.php";?>
    <h1>Sistem Informasi Geografis</h1>
    <h4>Laboratorium Pelayanan Tes Covid</h4>
  </div>
</br>

<div id="map" style="height: 580px; width: 100%;margin-top: -23px; float: all;"></div>

<?php 
$query = "SELECT * FROM tb_marker";
$sql= mysqli_query($koneksi, $query);
?>

<script>
  mapboxgl.accessToken = 'pk.eyJ1IjoibmFkYWZjaCIsImEiOiJja242NjlicmkwYjJ1MnZsZ2E2b3E3cW04In0.9y4R-3t0qsf5rucdAUGFqw';

  var geojson = {
    'type': 'FeatureCollection',
    'features': [
    <?php while ($row = $sql->fetch_array()){ 
      echo'{
        "type": "Feature",
        "geometry": {
          "type": "Point",
          "coordinates": ['.$row['longitude'].','.$row['latitude'].']
        },
        "properties": {
          "id": "'.$row['id'].'",
          "gambar": "'.$row['gambar'].'",
          "title": "'.$row['nama'].'",
          "description": "'.$row['alamat'].'",
        }
      },';
    }
    ?>
    ]
  };

  var map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v11',
    center: [112.06207181593065,-7.838499996470901],
    zoom: 8
  });

      // add markers to map
      geojson.features.forEach(function (marker) {
        // create a HTML element for each feature
        var el = document.createElement('div');
        el.className = 'marker';

        // make a marker for each feature and add it to the map
        new mapboxgl.Marker(el)
        .setLngLat(marker.geometry.coordinates)
        .setPopup(
            new mapboxgl.Popup({ offset: 25 }) // add popups
            .setHTML(
              '<img src= "image/'+
              marker.properties.gambar+
              '" width="80" height="50"> <h6>' +
              marker.properties.title +
              '</h6><p>' +
              marker.properties.description +
              '</p><a href="http://localhost/sig-teori-coba/pages/detail_data.php?id='
              +marker.properties.id+
              '">Detail</a></td>'
              )
            )
        .addTo(map);
      });

      map.on('load', function () {
    // Add a GeoJSON source containing place coordinates and information.
    map.addSource('places', {
      'type': 'geojson',
      'data': geojson
    });

    map.addLayer({
      'id': 'poi-labels',
      'type': 'symbol',
      'source': 'places',
      'layout': {
        'text-field': ['get', 'title'],
        'text-anchor': 'top',
        "text-font": ["DIN Offc Pro Medium", "Arial Unicode MS Bold"],
        "text-size": 15
      },
      'paint': {
        "text-color": "#B22222"
      }
    });
  });


</script>
</body>
</html>
