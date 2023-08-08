import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:penny_on_wheels_app/pages/how_to_ride.dart';
import 'package:penny_on_wheels_app/pages/payment.dart';
import 'package:penny_on_wheels_app/pages/ride_history.dart';
import 'package:penny_on_wheels_app/pages/settings.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:penny_on_wheels_app/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Penny On Wheels',
      initialRoute: HomePage.route,
      routes: <String, WidgetBuilder>{
        HomePage.route: (context) => const HomePage(),
        PaymentPage.route:(context) => const PaymentPage(),
        RideHistoryPage.route:(context) => RideHistoryPage(),
        HowToRidePage.route:(context) => HowToRidePage(),
        SettingsPage.route:(context) => SettingsPage()
      }
    );
  }
}