import 'package:flutter/material.dart';
import 'package:penny_on_wheels_app/widgets/drawer.dart';

class PaymentPage extends StatefulWidget {
  static const String route = '/payment_page';
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PAYMENT')),
      drawer: buildDrawer(context, PaymentPage.route),
    );
  }
}