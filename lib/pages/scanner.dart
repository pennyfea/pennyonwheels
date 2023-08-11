import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({super.key});

  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  MobileScannerController cameraController = MobileScannerController();

  @override
  Widget build(BuildContext context) {
    // Get the screen width and height
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    // Set the scanner size relative to the screen size
    double scannerWidth = width * 0.8; // 80% of screen width
    double scannerHeight = height * 0.6; // 60% of screen height

    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan to Ride'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.qr_code, size: 50),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Scan QR code on the scooter to start ride"),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  height: scannerHeight, // Dynamic height
                  width: scannerWidth, // Dynamic width
                  child: MobileScanner(
                    controller: cameraController,
                    onDetect: (capture) {
                      final List<Barcode> barcodes = capture.barcodes;
                      final Uint8List? image = capture.image;
                      for (final barcode in barcodes) {
                        debugPrint('Barcode found! ${barcode.rawValue}');
                      }
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ValueListenableBuilder(
                valueListenable: cameraController.torchState,
                builder: (context, state, child) {
                  return ElevatedButton(
                    onPressed: () => cameraController.toggleTorch(),
                    child: (state as TorchState) == TorchState.off
                        ? const Icon(Icons.flash_off, color: Colors.grey)
                        : const Icon(Icons.flash_on, color: Colors.yellow),
                  );
                },
              ),
            ),
            // Todo: Add another button: Enter QR code with keyboard
          ],
        ),
      ),
    );
  }
}
