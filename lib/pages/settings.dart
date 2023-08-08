import 'package:flutter/material.dart';
import 'package:penny_on_wheels_app/widgets/drawer.dart';
import 'package:penny_on_wheels_app/pages/home.dart';

class SettingsPage extends StatefulWidget {
  static const String route = '/settings_page';
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SETTINGS'),
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () => Navigator.pushReplacementNamed(context, HomePage.route),
        ),
      ),
    );
  }
}