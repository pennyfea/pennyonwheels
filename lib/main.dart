import 'package:flutter/material.dart';
import 'package:latlng/latlng.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MapApp(),
    );
  }
}

class MapApp extends StatefulWidget {
  const MapApp({super.key});

  @override
  State<MapApp> createState() => _MapAppState();
}

class _MapAppState extends State<MapApp> {
  // Saint Kitts and Nevis Lat Long Coordinates Info
  double longitude = 17.363747;
  double latitude = -62.754593;
  LatLng point = LatLng(49.5, -0.09);
  var location = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      //Todo: Add dependencies to render map
    );
  }
}