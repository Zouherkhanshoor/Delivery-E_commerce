import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:new_app/core/constant/key.dart';
import 'package:http/http.dart' as http;

Future getPolyLine(lat, long, destlat, destlong) async {
  List<LatLng> polylineco = [];

  PolylinePoints polylinePoints = PolylinePoints();
  Set<Polyline> polylineset = {};
  String url =
      "https://maps.googleapis.com/maps/api/directions/json?origin=$lat,$long&destination=$destlat,$destlong&key=$keyGoogleMap";
  var response = await http.post(Uri.parse(url));
  var responsebody = jsonDecode(response.body);

  var point = responsebody['routes'][0]['overview_polyline']['points'];

  List<PointLatLng> result = polylinePoints.decodePolyline(point);

  if (result.isNotEmpty) {
    for (var pointlatlng in result) {
      polylineco.add(LatLng(pointlatlng.latitude, pointlatlng.longitude));
    }
  }

  Polyline polyline = Polyline(
      polylineId: const PolylineId("polyline"),
      color: Colors.red,
      width: 5,
      points: polylineco);

  polylineset.add(polyline);

  return polylineset;
}
