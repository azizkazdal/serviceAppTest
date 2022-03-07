import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:service_request/_services/api/_base/api_base_service.dart';

import '../../../_dataModel/_base/api/api_return.dart';
import '../../../_dataModel/_base/api/data_return.dart';
import '../../../_dataModel/_base/app_result.dart';
import '../../../_dataModel/api_application/service_request_public_response.dart';

class ApiApplicationServiceRequestService extends ApiBaseService {
  Future<AppResult<ServiceRequestPublicResponse?>> getServiceRequest(String token) async {
    AppResult<ServiceRequestPublicResponse?> appResult = AppResult<ServiceRequestPublicResponse?>(result: null);
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

  Future<AppResult<bool>> saveServiceRequest(String token, ServiceRequestPublicResponse publicResponse) async {
    AppResult<bool> appResult = AppResult<bool>(result: false);
    try {


      return appResult;
    } on Exception catch (e) {
      appResult.result = false;
      appResult.isSuccess = false;
      appResult.message = "Bağlantı hatası";
      appResult.exception = "$e";
      appResult.returnCode = 999;
      appResult.dataTotalCount = 0;
      return appResult;
    }
  }
}
