import 'package:flutter/material.dart';

class ApplicationTheme {
  final ThemeData myTheme = ThemeData(
    primarySwatch: const MaterialColor(4279714676, {
      50: Color(0xffeaf2fb),
      100: Color(0xffd4e5f7),
      200: Color(0xffaacaee),
      300: Color(0xff7fb0e6),
      400: Color(0xff5595dd),
      500: Color(0xff2a7bd5),
      600: Color(0xff2262aa),
      700: Color(0xff194a80),
      800: Color(0xff113155),
      900: Color(0xff08192b)
    }),
    brightness: Brightness.light,
    primaryColor: const Color(0xff174374),
    primaryColorLight: const Color(0xffd4e5f7),
    primaryColorDark: const Color(0xff194a80),
    canvasColor: const Color(0xfffafafa),
    scaffoldBackgroundColor: const Color(0xfffafafa),
    bottomAppBarColor: const Color(0xffffffff),
    cardColor: const Color(0xffffffff),
    dividerColor: const Color(0x1f000000),
    highlightColor: const Color(0x66bcbcbc),
    splashColor: const Color(0x66c8c8c8),
    selectedRowColor: const Color(0xfff5f5f5),
    unselectedWidgetColor: const Color(0x8a000000),
    disabledColor: const Color(0x61000000),
    toggleableActiveColor: const Color(0xff2262aa),
    secondaryHeaderColor: const Color(0xffeaf2fb),
    backgroundColor: const Color(0xffaacaee),
    dialogBackgroundColor: const Color(0xffffffff),
    indicatorColor: const Color(0xff2a7bd5),
    hintColor: const Color(0x8a000000),
    errorColor: const Color(0xffd32f2f),
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.normal,
      minWidth: 88,
      height: 36,
      padding: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Color(0xff000000),
          width: 0,
          style: BorderStyle.none,
        ),
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
      alignedDropdown: false,
      buttonColor: Color(0xffe0e0e0),
      disabledColor: Color(0x61000000),
      highlightColor: Color(0x29000000),
      splashColor: Color(0x1f000000),
      focusColor: Color(0x1f000000),
      hoverColor: Color(0x0a000000),
      colorScheme: ColorScheme(
        primary: Color(0xff174374),
        secondary: Color(0xff2a7bd5),
        surface: Color(0xffffffff),
        background: Color(0xffaacaee),
        error: Color(0xffd32f2f),
        onPrimary: Color(0xffffffff),
        onSecondary: Color(0xffffffff),
        onSurface: Color(0xff000000),
        onBackground: Color(0xffffffff),
        onError: Color(0xffffffff),
        brightness: Brightness.light,
      ),
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: Color(0x8a000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headline2: TextStyle(
        color: Color(0x8a000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headline3: TextStyle(
        color: Color(0x8a000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headline4: TextStyle(
        color: Color(0x8a000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headline6: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      subtitle1: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      bodyText2: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      bodyText1: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      caption: TextStyle(
        color: Color(0x8a000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      button: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      overline: TextStyle(
        color: Color(0xff000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
    ),
    primaryTextTheme: const TextTheme(
      headline1: TextStyle(
        color: Color(0xb3ffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headline2: TextStyle(
        color: Color(0xb3ffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headline3: TextStyle(
        color: Color(0xb3ffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headline4: TextStyle(
        color: Color(0xb3ffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      subtitle1: TextStyle(
        color: Color(0xffffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      bodyText2: TextStyle(
        color: Color(0xffffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      bodyText1: TextStyle(
        color: Color(0xffffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      caption: TextStyle(
        color: Color(0xb3ffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      button: TextStyle(
        color: Color(0xffffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      overline: TextStyle(
        color: Color(0xffffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      labelStyle: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      helperStyle: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      hintStyle: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      errorStyle: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      errorMaxLines: null,
      isDense: false,
      contentPadding: EdgeInsets.only(top: 12, bottom: 12, left: 0, right: 0),
      isCollapsed: false,
      prefixStyle: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      suffixStyle: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      counterStyle: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      filled: false,
      fillColor: Color(0x00000000),
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff000000),
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff000000),
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff000000),
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff000000),
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff000000),
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff000000),
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
    ),
    iconTheme: const IconThemeData(
      color: Color(0xdd000000),
      opacity: 1,
      size: 24,
    ),
    primaryIconTheme: const IconThemeData(
      color: Color(0xffffffff),
      opacity: 1,
      size: 24,
    ),
    sliderTheme: const SliderThemeData(
      activeTrackColor: null,
      inactiveTrackColor: null,
      disabledActiveTrackColor: null,
      disabledInactiveTrackColor: null,
      activeTickMarkColor: null,
      inactiveTickMarkColor: null,
      disabledActiveTickMarkColor: null,
      disabledInactiveTickMarkColor: null,
      thumbColor: null,
      disabledThumbColor: null,
      thumbShape: null,
      overlayColor: null,
      valueIndicatorColor: null,
      valueIndicatorShape: null,
      showValueIndicator: null,
      valueIndicatorTextStyle: TextStyle(
        color: Color(0xffffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
    ),
    tabBarTheme: const TabBarTheme(
      indicatorSize: TabBarIndicatorSize.tab,
      labelColor: Color(0xffffffff),
      unselectedLabelColor: Color(0xb2ffffff),
    ),
    chipTheme: const ChipThemeData(
      backgroundColor: Color(0x1f000000),
      brightness: Brightness.light,
      deleteIconColor: Color(0xde000000),
      disabledColor: Color(0x0c000000),
      labelPadding: EdgeInsets.only(top: 0, bottom: 0, left: 8, right: 8),
      labelStyle: TextStyle(
        color: Color(0xde000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      padding: EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
      secondaryLabelStyle: TextStyle(
        color: Color(0x3d000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      secondarySelectedColor: Color(0x3d174374),
      selectedColor: Color(0x3d000000),
      shape: StadiumBorder(
          side: BorderSide(
        color: Color(0xff000000),
        width: 0,
        style: BorderStyle.none,
      )),
    ),
    dialogTheme: const DialogTheme(
        shape: RoundedRectangleBorder(
      side: BorderSide(
        color: Color(0xff000000),
        width: 0,
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.all(Radius.circular(0.0)),
    )),
  );

  static final defaultTheme = ThemeData(
    primarySwatch: const MaterialColor(4279714676, {
      50: Color(0xffeaf2fb),
      100: Color(0xffd4e5f7),
      200: Color(0xffaacaee),
      300: Color(0xff7fb0e6),
      400: Color(0xff5595dd),
      500: Color(0xff2a7bd5),
      600: Color(0xff2262aa),
      700: Color(0xff194a80),
      800: Color(0xff113155),
      900: Color(0xff08192b)
    }),
    primaryColor: const Color(0xff174374),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.red,
      foregroundColor: Colors.amber,
    ),
  );

  static const primaryColor = Color(0xff174374);
  static const shadowColor = Color.fromRGBO(204, 204, 204, 1);
  static const backgroundColor = Color.fromRGBO(242, 242, 242, 1.0);
  static const scaffoldBackgroundColor = Color.fromRGBO(242, 242, 242, 1.0);
  static const dialogBackgroundColor = Color.fromRGBO(242, 242, 242, 1.0);
  static const whiteColor = Color.fromRGBO(255, 255, 255, 1.0);

  static const headline1 = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 35,
    color: primaryColor,
    fontWeight: FontWeight.bold,
  );
  static const headline2 = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 25,
    color: primaryColor,
    fontWeight: FontWeight.bold,
  );
  static const headline2Danger = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 25,
    color: Colors.red,
    fontWeight: FontWeight.bold,
  );
  static const headline3 = TextStyle(fontFamily: 'Roboto');
  static const headline4 = TextStyle(fontFamily: 'Roboto');
  static const headline5 = TextStyle(fontFamily: 'Roboto');
  static const headline6 = TextStyle(fontFamily: 'Roboto');

  static ThemeData getDefaultTheme() {
    return ThemeData(
      useMaterial3: true,
      primarySwatch: const MaterialColor(4279714676, {
        50: Color(0xffeaf2fb),
        100: Color(0xffd4e5f7),
        200: Color(0xffaacaee),
        300: Color(0xff7fb0e6),
        400: Color(0xff5595dd),
        500: Color(0xff2a7bd5),
        600: Color(0xff2262aa),
        700: Color(0xff194a80),
        800: Color(0xff113155),
        900: Color(0xff08192b)
      }),
      primaryColor: primaryColor,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
      ),
      textTheme: const TextTheme(
        headline1: headline1,
        headline2: headline2,
        headline3: headline3,
        headline4: headline4,
        headline5: headline5,
        headline6: headline6,
      ),
      backgroundColor: backgroundColor,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      dialogBackgroundColor: dialogBackgroundColor,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all(const Size(60, 60)),
          backgroundColor: MaterialStateProperty.all(primaryColor),
        ),
      ),
    );
  }

  static InputDecoration getTextFormFieldDecoration(String? labelText, String? hintText, String? initialHintText) {
    String? hintTextValue;
    if (hintText == null || hintText.isEmpty) {
      hintTextValue = initialHintText;
    } else {
      hintTextValue = hintText;
    }

    InputDecoration decoration = InputDecoration(
      alignLabelWithHint: true,
      isDense: true,
      isCollapsed: false,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      labelText: labelText,
      labelStyle: const TextStyle(fontSize: 18, color: primaryColor),
      hintStyle: const TextStyle(fontSize: 14.4, color: Colors.green),
      hintText: hintTextValue,
      border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black26)),
      disabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black26)),
    );
    return decoration;
  }

  static InputDecoration getTextFormFieldDecorationWithPrefixSuffix(String? labelText, String? hintText, String? initialHintText, Widget? prefix, Widget? suffix) {
    String? hintTextValue;
    if (hintText == null || hintText.isEmpty) {
      hintTextValue = initialHintText;
    } else {
      hintTextValue = hintText;
    }
    InputDecoration decoration = InputDecoration(
      alignLabelWithHint: true,
      isDense: true,
      isCollapsed: false,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      labelText: labelText,
      labelStyle: const TextStyle(fontSize: 18, color: primaryColor),
      hintStyle: const TextStyle(fontSize: 14.4, color: Colors.green),
      hintText: hintTextValue,
      prefixIcon: prefix,
      suffixIcon: suffix,
      border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black26)),
      disabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black26)),
    );
    return decoration;
  }
}
