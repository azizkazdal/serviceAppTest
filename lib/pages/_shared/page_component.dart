import 'package:flutter/cupertino.dart';

import '../../_pageModel/_const/application_theme.dart';

class PageComponent {
  static Widget pageHeader(double? height) {
    return Container(
      height: height,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: ApplicationTheme.shadowColor,
            spreadRadius: 5,
            blurRadius: 5,
            offset: Offset(2, 1),
          ),
        ],
        color: ApplicationTheme.whiteColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Image.asset(
            "assets/images/eqlem_w_500.png",
          ),
        ),
      ),
    );
  }

  static BoxDecoration pageContainerDecoration() {
    return const BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
      boxShadow: [
        BoxShadow(
          color: ApplicationTheme.shadowColor,
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(2, 1),
        ),
      ],
      color: ApplicationTheme.whiteColor,
    );
  }
}
