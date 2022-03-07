import 'package:service_request/_services/database/_base/base_db_service.dart';
import 'package:sqflite/sqflite.dart';

import '../../_dataModel/_base/app_result.dart';
import '../../_dataModel/api_management/response/account_service_request_information.dart';
import '../_base/base_service.dart';

class ServiceRequestDbService extends BaseDbService {
  Future<AppResult<AccountServiceRequestInformation?>> findAccountApi(String? tagPrefix) async {
    var dbReturn = BaseService();
    AccountServiceRequestInformation? dbResult;
    tableName = "AccountServiceRequestInformation";
    try {

      return dbReturn.success<AccountServiceRequestInformation?>(dbResult, "", 1, 1);
    } on Exception catch (e) {
      return dbReturn.failed<AccountServiceRequestInformation?>(dbResult, "ServiceRequestDbService -> saveList", 0, 0, e);
    }
  }

  Future<AppResult<int?>> saveAccountServiceRequestInformation(List<AccountServiceRequestInformation> items) async {
    var dbReturn = BaseService();
    tableName = "AccountServiceRequestInformation";
    try {
      await openDbConnection();
      int dbSaveResult = 0;


      return dbReturn.success<int?>(dbSaveResult, "", items.length, items.length);
    } on Exception catch (e) {
      return dbReturn.failed<int?>(null, "ServiceRequestDbService -> saveList", 0, 0, e);
    }
  }
}
