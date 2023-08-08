import 'package:flutter/material.dart';
import 'package:penny_on_wheels_app/widgets/drawer.dart';
import 'package:penny_on_wheels_app/pages/home.dart';

class RideHistoryPage extends StatefulWidget {
  static const String route = '/ride_history_page';
  const RideHistoryPage({super.key});

  @override
  State<RideHistoryPage> createState() => _RideHistoryPageState();
}

class _RideHistoryPageState extends State<RideHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('RIDE HISTORY'),
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () => Navigator.pushReplacementNamed(context, HomePage.route)
        ),
      ),
    );
  }
}