import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:service_request/_pageModel/_const/application_theme.dart';
import 'package:service_request/_services/git_service_locator.dart';
import 'package:service_request/pages/home_page.dart';

import '_viewModel/barcode_scanner_view_model.dart';
import '_viewModel/home_page_view_model.dart';
import '_viewModel/service_request_page_view_model.dart';

void main() {
  registerGitServices();
  runApp(const ServiceRequestApp());
}

class ServiceRequestApp extends StatelessWidget {
  const ServiceRequestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: ApplicationTheme.primaryColor,
      systemNavigationBarColor: ApplicationTheme.primaryColor,
      systemNavigationBarDividerColor: ApplicationTheme.primaryColor,
    ));
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<HomePageViewModel>(create: (context) => HomePageViewModel()),
          ChangeNotifierProvider<ServiceRequestPageViewModel>(create: (context) => ServiceRequestPageViewModel()),
          ChangeNotifierProvider<BarcodeScannerViewModel>(create: (context) => BarcodeScannerViewModel()),
        ],
        child: MaterialApp(
          initialRoute: "HomePage",
          routes: <String, WidgetBuilder>{
            'HomePage': (context) => const HomePage(title: 'Servis Talep Uygulaması'),
          },
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            // ... app-specific localization delegate[s] here
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('tr', 'TR'),
          ],
          theme: ApplicationTheme.getDefaultTheme(),
          home: const HomePage(title: 'Servis Talep Uygulaması'),
        ));
  }
}
