class ConnectionParameter {
  static const String managementHost = "p";

  static const String managementTestHost = "p";
  static const String managementScheme = "p";
  static const String managementTestScheme = "p";
  static const String managementBaseUrl = "p";

  // static const String managementTestBaseUrl = "http://managementapi.eqlemtest.com";
  static const int managementPort = 0;
  static const int managementTestPort = 0;
  static const String managementConnection = "p";
  static const String managementVersion = "p";
  static const String managementPublic = "p";
  static const String managementMediaTypeHeader = "application/json";

  static Map<String, String> managementRequestHeaders = {
    "Content-type": ConnectionParameter.managementMediaTypeHeader.toString(),
    "Accept": ConnectionParameter.managementMediaTypeHeader.toString(),
  };

  //application API information
  static String? baseUrl;
  static int port = 0;
  static String? connection;
  static String? version;
  static String? mediaTypeHeader;

  static Map<String, String> applicationRequestHeaders = {
    "Content-type": ConnectionParameter.mediaTypeHeader.toString(),
    "Accept": ConnectionParameter.mediaTypeHeader.toString(),
  };
}
