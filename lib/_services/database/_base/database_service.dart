import 'package:path/path.dart';
import 'package:service_request/_dataModel/_base/base_entity.dart';
import 'package:sqflite/sqflite.dart';

import '../../../_dataModel/api_management/response/account_service_request_information.dart';
import '../../../_dataModel/database/database_tables.dart';

class DatabaseService {
  String dbName = "eqlem_service_request.db";
  Database? db;

  initializeDatabase() async {
    try {
      var folder = await getDatabasesPath();
      String dbPath = join(folder, dbName);
      db = await openDatabase(dbPath, version: 1);
    } on Exception {
      rethrow;
    }
  }

  deleteAndCreateDb() async {
    try {
      var folder = await getDatabasesPath();
      String dbPath = join(folder, dbName);
      await deleteDatabase(dbPath);
      await openDatabaseConnection();
    } on Exception {
      rethrow;
    }
  }

  String getBaseEntityColumnQuery(BaseEntity entity) {
    try {
      String query = "";
      var columns = entity.getColumns();
      for (int i = 0; i < columns.length; i++) {
        if (i == columns.length - 1) {
          query += "${columns[i].name} ${columns[i].type}";
        } else {
          query += "${columns[i].name} ${columns[i].type} ,";
        }
      }
      return query;
    } on Exception {
      rethrow;
    }
  }

  Future<Database> openDatabaseConnection() async {
    try {
      var folder = await getDatabasesPath();
      String dbPath = join(folder, dbName);
      return openDatabase(dbPath);
    } on Exception {
      rethrow;
    }
  }

  Future<int> createTables() async {
    try {
      db = await openDatabaseConnection();

      String accountServiceRequestTableQuery = DatabaseTables.tablePrefix + " AccountServiceRequestInformation ";
      accountServiceRequestTableQuery += "( " + DatabaseTables.baseEntity + " , ";
      accountServiceRequestTableQuery += getBaseEntityColumnQuery(AccountServiceRequestInformation()) + " )";

      await db?.rawQuery(accountServiceRequestTableQuery);

      return 1;
    } on Exception {
      rethrow;
    }
  }
}
