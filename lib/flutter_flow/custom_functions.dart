import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';

String? newCustomFunction() {
  // google api function with mark in los angeles
  return '''
  function initMap() {
    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 4,
      center: {lat: -33, lng: 151},
    });

    var image = 'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png';
    var beachMarker = new google.maps.Marker({
      position: {lat: -33.890, lng: 151.274},
      map: map,
      icon: image
    });
  }
  ''';
}

String? newCustomFunction2() {
  // create The document used to set the map marker. Note: This document must include a LatLng field.
  // google api function with mark in los angeles
  return '''
  function initMap() {
    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 4,
      center: {lat: -33, lng: 151},
    });

    var image = 'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png';
    var beachMarker = new google.maps.Marker({
      position: {lat: -33.890, lng: 151.274},
      map: map,
      icon: image
    });
  }
  ''';
}

LatLng? newCustomFunction3() {
  // mark parauapebas city and mark 5 car dealerships
  // create The document used to set the map marker. Note: This document must include a LatLng field.
  // google api function with mark in los angeles
  return LatLng(-6.067, -49.45);
}

List<LatLng> funcao() {
  // google maps latlang list parauapebas city
  // mark parauapebas city and mark 5 car dealerships
  // create The document used to set the map marker. Note: This document must include a LatLng field.
  // google api function with mark in los angeles
  return [
    LatLng(-6.067, -49.45),
    LatLng(-6.067, -49.45),
    LatLng(-6.067, -49.45),
    LatLng(-6.067, -49.45),
    LatLng(-6.067, -49.45),
  ];
}
