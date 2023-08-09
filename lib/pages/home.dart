import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:location/location.dart';
import 'package:penny_on_wheels_app/widgets/drawer.dart';

class HomePage extends StatefulWidget {

  static const String route = '/';
  
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // Saint Kitts and Nevis Lat Long Coordinates Info
  final double longitude = -62.754593;
  final double latitude = 17.363747;

  final Location location = Location();
  
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Penny On Wheels')),
      drawer: buildDrawer(context, HomePage.route),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Stack(
          children: [
            FlutterMap(
              options: MapOptions(
                center: LatLng(latitude, longitude),
                zoom: 5,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'dev.fleaflet.flutter_map.example',
                ),
                MarkerLayer(
                  markers: [
                    Marker(
                      point: LatLng(latitude, longitude),
                      width: 40,
                      height: 40,
                      builder: (context) => FlutterLogo(),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FilledButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          const Icon(Icons.group), // Add the appropriate icon
                          const SizedBox(width: 5),
                          const Text('Group Ride'),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    FilledButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          const Icon(Icons.qr_code), // Add the appropriate icon
                          const SizedBox(width: 5),
                          const Text('Scan'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}