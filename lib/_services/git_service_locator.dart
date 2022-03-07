import 'package:get_it/get_it.dart';
import 'package:service_request/_services/api/_base/uri_service.dart';

import 'api/application/api_application_service_request_service.dart';
import 'api/management/api_management_service.dart';
import 'application/app_converter_service.dart';
import 'application/app_notification_service.dart';
import 'database/_base/database_service.dart';
import 'database/service_request_db_service.dart';

final getIt = GetIt.instance;

void registerGitServices() {
  getIt.registerSingleton<AppConverterService>(AppConverterService());
  getIt.registerSingleton<AppNotificationService>(AppNotificationService());

  getIt.registerSingleton<DatabaseService>(DatabaseService());
  getIt.registerSingleton<ServiceRequestDbService>(ServiceRequestDbService());

  getIt.registerSingleton<UriService>(UriService());
  getIt.registerSingleton<ApiManagementService>(ApiManagementService());
  getIt.registerSingleton<ApiApplicationServiceRequestService>(ApiApplicationServiceRequestService());
}
