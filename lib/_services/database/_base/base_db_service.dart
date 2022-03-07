import 'package:uuid/uuid.dart';

import '../../../_dataModel/_base/application_information.dart';
import '../../../_dataModel/_base/entity.dart';
import 'database_service.dart';

class BaseDbService with DatabaseService {
  String tableName = "";

  Entity setEntityValue(Entity entity, bool isUpdate) {
    if (!isUpdate) {
      entity.isActive ??= true;
      entity.createdUser = ApplicationInformation.serviceRequestUserId;
      entity.createdDate = DateTime.now();
      entity.updatedDate = DateTime.now();
      entity.updatedUser = ApplicationInformation.serviceRequestUserId;
    } else {
      entity.createdDate ??= DateTime.now();
      entity.createdUser ??= ApplicationInformation.serviceRequestUserId;
      entity.isActive ??= true;
      entity.updatedDate = DateTime.now();
      entity.updatedUser = ApplicationInformation.serviceRequestUserId;
    }
    return entity;
  }

  var uuid = const Uuid();

  openDbConnection() async {
    if (db == null || db?.isOpen == false) {
      db = await openDatabaseConnection();
    }
  }

  closeDbConnection() async {
    if (db?.isOpen == true) {
      await db?.close();
    }
  }
}
