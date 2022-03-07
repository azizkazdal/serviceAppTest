import 'package:get_it/get_it.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import 'base_view_model.dart';

final getIt = GetIt.instance;

class BarcodeScannerViewModel extends BaseViewModel {
  Barcode? result;

  barcodeResult(Barcode? selectedBarcode) {
    try {
      result = selectedBarcode;
    } on Exception {
      rethrow;
    }
  }
}
