import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../_services/application/app_converter_service.dart';
import '../_services/application/app_notification_service.dart';

final getIt = GetIt.instance;

class BaseViewModel with ChangeNotifier {
  BuildContext? context;

  var notificationService = getIt.get<AppNotificationService>();
  var converterService = getIt.get<AppConverterService>();

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

  showAlert(String title, String message, bool returnBack) async {
    try {
      if (context != null) {
        await showDialog(context: context!, barrierDismissible: false, builder: (context) => notificationService.getAlertDialog(context, title, message, returnBack)).then((value) {
          if (value == true) {
            Navigator.pop(context!);
          }
        });
      }
    } on Exception {
      rethrow;
    }
  }
}
