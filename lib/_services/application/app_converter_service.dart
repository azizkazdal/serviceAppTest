import 'dart:convert';

import 'package:service_request/_dataModel/_base/connection_parameter.dart';

import '../../_dataModel/api_management/response/account_service_request_information.dart';

class AppConverterService {
  String convertToBase64(String value) {
    try {
      var bytes = utf8.encode(value);
      var base64 = base64Encode(bytes);
      return base64;
    } on Exception {
      rethrow;
    }
  }

  void setConnectionParameter(AccountServiceRequestInformation? requestInformation) {
    try {
      if (requestInformation != null) {
        ConnectionParameter.baseUrl = requestInformation.url;
        ConnectionParameter.port = requestInformation.port;
        ConnectionParameter.connection = requestInformation.connection;
        ConnectionParameter.version = requestInformation.version;
        ConnectionParameter.mediaTypeHeader = requestInformation.mediaTypeHeader;
      }
    } on Exception {
      rethrow;
    }
  }
}
