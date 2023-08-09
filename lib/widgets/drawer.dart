import 'package:flutter/material.dart';

import 'package:penny_on_wheels_app/pages/payment.dart';
import 'package:penny_on_wheels_app/pages/ride_history.dart';
import 'package:penny_on_wheels_app/pages/how_to_ride.dart';
// import 'package:penny_on_wheels_app/pages/safety.dart';
// import 'package:penny_on_wheels_app/pages/help.dart';
import 'package:penny_on_wheels_app/pages/settings.dart';

Widget _buildMenuItem(
  BuildContext context,
  Widget title,
  String routeName,
  String currentRoute, {
  Widget? icon,
}) {
  final isSelected = routeName == currentRoute;

  return ListTile(
    title: title,
    leading: icon,
    selected: isSelected,
    onTap: () {
      if (isSelected) {
        Navigator.pop(context);
      } else {
        Navigator.pushReplacementNamed(context, routeName);
      }
    },
  );
}

Drawer buildDrawer(BuildContext context, String currentRoute) {
  return Drawer(
    child: ListView(
      children: <Widget>[
          SizedBox(
            height: 64.0,
            child: DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Penny On Wheels',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0
                      ),
                  ),
                ],
              ),
            ),
        ),
        _buildMenuItem(
          context,
          const Text('PAYMENT'),
          PaymentPage.route,
          currentRoute,
          icon: const Icon(Icons.wallet)
        ),
        _buildMenuItem(
          context,
          const Text('RIDE HISTORY'),
          RideHistoryPage.route,
          currentRoute,
          icon: const Icon(Icons.history),
        ),
        _buildMenuItem(
          context,
          const Text('HOW TO RIDE'),
          HowToRidePage.route,
          currentRoute,
          icon: const Icon(Icons.electric_scooter),
        ),
        // _buildMenuItem(
        //   context,
        //   const Text('SAFETY'),
        //   SafetyPage.route,
        //   currentRoute,
        //   icon: const Icon(Icons.home),
        // ),
        // _buildMenuItem(
        //   context,
        //   const Text('HELP'),
        //   HelpPage.route,
        //   currentRoute,
        //   icon: const Icon(Icons.home),
        // ),
        _buildMenuItem(
          context,
          const Text('SETTINGS'),
          SettingsPage.route,
          currentRoute,
          icon: const Icon(Icons.settings),
        ),
      ],
    ),
  );
}