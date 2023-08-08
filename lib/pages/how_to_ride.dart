import 'package:flutter/material.dart';
import 'package:penny_on_wheels_app/widgets/drawer.dart';
import 'package:penny_on_wheels_app/pages/home.dart';

class HowToRidePage extends StatelessWidget {
  static const String route = '/how_to_ride_page';
  const HowToRidePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HOW TO RIDE'),
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () => Navigator.pushReplacementNamed(context, HomePage.route),
        ),
      ),
    );
  }
}