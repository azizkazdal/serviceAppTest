import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../_viewModel/barcode_scanner_view_model.dart';

const flashOn = 'FLASH ON';
const flashOff = 'FLASH OFF';
const frontCamera = 'FRONT CAMERA';
const backCamera = 'BACK CAMERA';

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  Barcode? result;
  var flashState = flashOn;
  var cameraState = frontCamera;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Color? flashColor;
  Color? cameraColor;
  bool barcodeParameter = false;

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller?.pauseCamera();
    } else if (Platform.isIOS) {
      controller?.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BarcodeScannerViewModel>(
      builder: (context, viewModel, child) {
        viewModel.context = context;
        viewModel.getSizes();
        return Scaffold(
          appBar: AppBar(
            title: const Text("Barkod okutunuz", style: TextStyle(fontSize: 18)),
            actions: [
              IconButton(
                  icon: const Icon(Icons.flash_on),
                  color: flashColor ?? Colors.white,
                  onPressed: () {
                    if (controller != null) {
                      controller!.toggleFlash();
                      if (_isFlashOn(flashState)) {
                        setState(() {
                          flashState = flashOff;
                          flashColor = Colors.green;
                        });
                      } else {
                        setState(() {
                          flashState = flashOn;
                          flashColor = Colors.white;
                        });
                      }
                    }
                  }),
              IconButton(
                icon: Icon(Icons.camera_front, color: cameraColor ?? Colors.white),
                onPressed: () {
                  if (controller != null) {
                    controller!.flipCamera();
                    if (_isBackCamera(cameraState)) {
                      setState(() {
                        cameraState = frontCamera;
                        cameraColor = Colors.white;
                      });
                    } else {
                      setState(() {
                        cameraState = backCamera;
                        cameraColor = Colors.green;
                      });
                    }
                  }
                },
              ),
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15, bottom: 15),
                  child: _buildQrView(context),
                ),
              ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.grey.withOpacity(0.8),
                          ),
                        ),
                        onPressed: null,
                        child: Text(
                          result != null ? result!.code! : " ",
                          style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(const Size(150, 70)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.red,
                          ),
                        ),
                        child: const Icon(Icons.close, color: Colors.white),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(const Size(150, 70)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.orange,
                            ),
                          ),
                          onPressed: () {
                            controller?.resumeCamera();
                          },
                          child: const Text('Tekrar Oku', style: TextStyle(fontSize: 18, color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.blue,
                          ),
                        ),
                        onPressed: () {
                          viewModel.barcodeResult(result);
                          Navigator.pop(context, viewModel.result);
                        },
                        child: const Text('Tamam', style: TextStyle(fontSize: 17, color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  bool _isFlashOn(String current) {
    return flashOn == current;
  }

  bool _isBackCamera(String current) {
    return backCamera == current;
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 || MediaQuery.of(context).size.height < 400) ? 250.0 : 350.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return NotificationListener<SizeChangedLayoutNotification>(
        onNotification: (notification) {
          // Future.microtask(() => controller?.updateDimensions(qrKey, scanArea: scanArea));
          return false;
        },
        child: SizeChangedLayoutNotifier(
            key: const Key('qr-size-notifier'),
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
              overlay: QrScannerOverlayShape(
                borderColor: Colors.red,
                borderRadius: 10,
                borderLength: 30,
                borderWidth: 10,
                cutOutSize: scanArea,
              ),
            )));
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    BarcodeScannerViewModel barcodeScannerViewModel = BarcodeScannerViewModel();

    controller.scannedDataStream.listen(
      (scanData) {
        setState(() {
          result = scanData;
        });
        if (result != null) {
          // FlutterBeep.beep();
        }
        if (barcodeParameter == false) {
          controller.pauseCamera();
        } else {
          controller.pauseCamera();
          barcodeScannerViewModel.barcodeResult(result!);
          Navigator.pop(context, barcodeScannerViewModel.result);
        }
      },
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
