import 'package:flutter/material.dart';

class AppNotificationService {
  AlertDialog getAlertDialog(BuildContext context, String title, String content, bool returnBack) {
    return AlertDialog(
      title: Text(title, textAlign: TextAlign.center),
      content: Text(content, textAlign: TextAlign.left),
      actions: <Widget>[
        TextButton(
          child: const Text("KAPAT"),
          onPressed: () {
            Navigator.pop(context, returnBack);
          },
        ),
      ],
    );
  }
}
