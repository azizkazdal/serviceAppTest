import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:service_request/_services/api/_base/uri_service.dart';

import '../../../_dataModel/_base/connection_parameter.dart';

final getIt = GetIt.instance;

class ApiBaseService {
  bool connectTestApi = false;
  String? controller;

  var uriService = getIt.get<UriService>();

  // application base request
  Future<http.Response> getApplication(List<String> pathSegments, List<Map<String, dynamic>>? query, bool useOnlySegment) async {
    try {
      uriService.connectTestApi = connectTestApi;
      var uri = uriService.applicationUri(null, pathSegments, getQuery(query), null, useOnlySegment);
      return await http.get(uri, headers: ConnectionParameter.applicationRequestHeaders);
    } on Exception {
      rethrow;
    }
  }

  Future<http.Response> postApplication(List<String>? pathSegments, List<Map<String, dynamic>>? query, String jsonEncoded, bool useOnlySegment) async {
    try {
      uriService.connectTestApi = connectTestApi;
      var uri = uriService.applicationUri(null, pathSegments, getQuery(query), null, useOnlySegment);
      var result = await http.post(uri, headers: ConnectionParameter.applicationRequestHeaders, body: jsonEncoded);
      return result;
    } on Exception {
      rethrow;
    }
  }

  Future<http.Response> putApplication(List<String>? pathSegment, List<Map<String, dynamic>>? query, String jsonEncoded, bool useOnlySegment) async {
    try {
      var uri = uriService.applicationUri(null, pathSegment, getQuery(query), null, useOnlySegment);
      var result = await http.put(uri, headers: ConnectionParameter.applicationRequestHeaders, body: jsonEncoded);
      return result;
    } on Exception {
      rethrow;
    }
  }

  // api_management base request
  Future<http.Response> getManagement(List<String> pathSegments, List<Map<String, dynamic>>? query, bool useOnlySegment) async {
    try {
      uriService.connectTestApi = connectTestApi;
      var uri = uriService.managementUri(null, pathSegments, getQuery(query), null, useOnlySegment);
      return await http.get(uri, headers: ConnectionParameter.managementRequestHeaders);
    } on Exception {
      rethrow;
    }
  }

  Future<http.Response> postManagement(List<String>? pathSegments, List<Map<String, dynamic>>? query, String jsonEncoded, bool useOnlySegment) async {
    try {
      uriService.connectTestApi = connectTestApi;
      var uri = uriService.managementUri(null, pathSegments, getQuery(query), null, useOnlySegment);
      var result = await http.post(uri, headers: ConnectionParameter.managementRequestHeaders, body: jsonEncoded);
      return result;
    } on Exception catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }

  // route and query methods

  String? getRoute(List<String>? route, List<Map<String, dynamic>>? query) {
    if (query == null) return null;
    var routeValue = StringBuffer();
    routeValue.write(controller);
    if (route != null && route.isNotEmpty) {
      for (String item in route) {
        routeValue.write("/");
        routeValue.write(item);
      }
    }
    return routeValue.toString();
  }

  String? getQuery(List<Map<String, dynamic>>? query) {
    if (query == null) return null;
    var queryValue = StringBuffer();
    if (query.isNotEmpty) {
      for (var item in query) {
        if (query.indexOf(item) == 0) {
          queryValue.write(item.keys.toString().replaceAll("(", "").replaceAll(")", "") + "=" + item.values.toString().replaceAll("(", "").replaceAll(")", ""));
        } else {
          queryValue.write("&" + item.keys.toString().replaceAll("(", "").replaceAll(")", "") + "=" + item.values.toString().replaceAll("(", "").replaceAll(")", ""));
        }
      }
    }
    return queryValue.toString();
  }
}
