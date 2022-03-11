import 'package:flutter/material.dart';


class BaseViewModel with ChangeNotifier {
  BuildContext? context;

  Size? size;

  getSizes() {
    if (context != null) size ??= MediaQuery.of(context!).size;
  }

  double get width => size!.width;

  double get height => size!.height;

  getWidthByPercent(double percentAge) {
    if (size == null) getSizes();
    return percent(width, percentAge);
  }

  getHeightByPercent(double percentAge) {
    if (size == null) getSizes();
    return percent(height, percentAge);
  }

  double percent(double value, double percentAge) {
    return (value * percentAge) / 100;
  }

  setControllerValue(TextEditingController? controller, String? value) {
    try {
      if (value != null && value.isNotEmpty) {
        controller?.text = value;
      } else {
        controller?.text = "";
      }
    } on Exception {
      rethrow;
    }
  }
}
