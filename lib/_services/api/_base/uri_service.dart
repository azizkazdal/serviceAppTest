import '../../../_dataModel/_base/connection_parameter.dart';

class UriService {
  bool connectTestApi = false;

  Uri managementUri(String? path, Iterable<String>? pathSegments, String? query, Map<String, dynamic>? queryParameter, bool useOnlySegment) {
    try {
      Uri managementUri = Uri(
        scheme: connectTestApi == false ? ConnectionParameter.managementScheme : ConnectionParameter.managementTestScheme,
        host: connectTestApi == false ? ConnectionParameter.managementHost : ConnectionParameter.managementTestHost,
        port: connectTestApi == false ? ConnectionParameter.managementPort : ConnectionParameter.managementTestPort,
        pathSegments: managementUriPathSegments(pathSegments, useOnlySegment),
        query: query,
        queryParameters: queryParameter,
      );
      return managementUri;
    } on Exception {
      rethrow;
    }
  }

  Iterable<String>? managementUriPathSegments(Iterable<String>? pathSegments, bool useOnlySegment) {
    try {
      if (pathSegments == null) return null;
      List<String> segments = [];
      if (useOnlySegment == false) {
        segments.add(ConnectionParameter.managementConnection);
        segments.add(ConnectionParameter.managementVersion);
      }
      for (int i = 0; i < pathSegments.length; i++) {
        segments.add(pathSegments.elementAt(i));
      }
      return segments;
    } on Exception {
      rethrow;
    }
  }

  Uri applicationUri(String? path, Iterable<String>? pathSegments, String? query, Map<String, dynamic>? queryParameter, bool useOnlySegment) {
    try {
      String scheme = "http";
      if (ConnectionParameter.baseUrl != null && ConnectionParameter.baseUrl!.startsWith("https")) scheme = "https";
      String host = ConnectionParameter.baseUrl!.replaceAll(RegExp(scheme + "://"), "");
      Uri applicationUri = Uri(
        scheme: scheme,
        host: host,
        port: ConnectionParameter.port,
        path: path,
        pathSegments: applicationUriPathSegments(pathSegments, useOnlySegment),
        query: query,
        queryParameters: queryParameter,
      );

      return applicationUri;
    } on Exception {
      rethrow;
    }
  }

  Iterable<String>? applicationUriPathSegments(Iterable<String>? pathSegments, bool useOnlySegment) {
    try {
      if (pathSegments == null) return null;
      List<String> segments = [];
      if (useOnlySegment == false) {
        segments.add(ConnectionParameter.connection!);
        segments.add(ConnectionParameter.version!);
      }
      for (int i = 0; i < pathSegments.length; i++) {
        segments.add(pathSegments.elementAt(i));
      }
      return segments;
    } on Exception {
      rethrow;
    }
  }
}
