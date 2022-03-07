import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:service_request/_pageModel/home_page_model.dart';
import 'package:service_request/pages/service_request_page.dart';

import '../_dataModel/api_management/response/account_service_request_information.dart';
import '../_services/api/application/api_application_service_request_service.dart';
import '../_services/api/management/api_management_service.dart';
import '../_services/database/_base/database_service.dart';
import '../_services/database/service_request_db_service.dart';
import '../pages/_shared/barcode_scanner_page.dart';
import 'base_view_model.dart';

final getIt = GetIt.instance;

class HomePageViewModel extends BaseViewModel {
  var pageModel = HomePageModel();

  var apiManagementService = getIt.get<ApiManagementService>();
  var databaseService = getIt.get<DatabaseService>();
  var serviceRequestDbService = getIt.get<ServiceRequestDbService>();
  var apiServiceRequestService = getIt.get<ApiApplicationServiceRequestService>();

  AccountServiceRequestInformation? serviceRequestInformation;
  bool companiesUpdated = false;

  readBarcode() {
    pageModel = HomePageModel();
    Navigator.push(context!, MaterialPageRoute(builder: (context) => const BarcodeScannerPage())).then((value) async {
      if ((value as Barcode?) != null) {
        await setPageModelFromBarcode(value);
        notifyListeners();
      }
    });
  }

  setPageModelFromBarcode(Barcode? barcode) async {
    try {
      var prefix = barcode?.code?.substring(0, 5);
      if (prefix != null) pageModel.prefix = prefix;
      pageModel.code = barcode?.code;
      pageModel.tagCode = pageModel.code;
      setControllerValue(pageModel.codeController, pageModel.code);
    } on Exception {
      rethrow;
    }
  }

  Future<bool> getAccountServiceRequestInformation() async {
    try {
      return true;
    } on Exception {
      rethrow;
    }
  }

  setDefaults() async {
    try {
      await databaseService.initializeDatabase();
      await databaseService.createTables();
      notifyListeners();
    } on Exception {
      rethrow;
    }
  }

  findAsset() async {
    try {

    } on Exception {
      rethrow;
    }
  }
}
