import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:service_request/_services/api/_base/api_base_service.dart';

import '../../../_dataModel/_base/api/api_return.dart';
import '../../../_dataModel/_base/api/data_return.dart';
import '../../../_dataModel/_base/app_result.dart';
import '../../../_dataModel/api_management/request/account_service_request_model.dart';
import '../../../_dataModel/api_management/response/account_service_request_information.dart';

class ApiManagementService extends ApiBaseService {

  Future<AppResult<List<AccountServiceRequestInformation>>> getAccountServiceRequestInformation(AccountServiceRequestModel? requestModel) async {
    AppResult<List<AccountServiceRequestInformation>> appResult = AppResult<List<AccountServiceRequestInformation>>(result: List<AccountServiceRequestInformation>.empty(growable: true));
    try {


      return appResult;
    } on Exception catch (e) {
      appResult.isSuccess = false;
      appResult.message = "Bağlantı hatası";
      appResult.exception = "$e";
      appResult.returnCode = 999;
      appResult.dataTotalCount = 0;
      return appResult;
    }
  }
}
