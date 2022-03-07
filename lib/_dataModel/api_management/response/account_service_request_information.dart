import 'package:service_request/_dataModel/_base/db_column.dart';

import '../../_base/base_entity.dart';
import '../../interface/db_operation.dart';

class AccountServiceRequestInformation implements BaseEntity, DbOperation {
  @override
  String? id;

  String? serviceRequestUserId;
  String? accountId;
  String? accountName;
  String? apiKey;
  String? tagPrefix;
  DateTime? licenceStartDate;
  DateTime? licenceEndDate;
  String? url;
  int port;
  String? connection;
  String? version;
  String? mediaTypeHeader;

  AccountServiceRequestInformation({
    this.id,
    this.serviceRequestUserId,
    this.accountId,
    this.accountName,
    this.apiKey,
    this.tagPrefix,
    this.licenceStartDate,
    this.licenceEndDate,
    this.url,
    this.port = 443,
    this.connection,
    this.version,
    this.mediaTypeHeader,
  });

  @override
  List<DbColumn> getColumns() {
    try {
      List<DbColumn> columns = List<DbColumn>.empty(growable: true);
      columns.add(DbColumn(name: "serviceRequestUserId", type: "TEXT"));
      columns.add(DbColumn(name: "accountId", type: "TEXT"));
      columns.add(DbColumn(name: "accountName", type: "TEXT"));
      columns.add(DbColumn(name: "apiKey", type: "TEXT"));
      columns.add(DbColumn(name: "tagPrefix", type: "TEXT"));
      columns.add(DbColumn(name: "licenceStartDate", type: "TEXT"));
      columns.add(DbColumn(name: "licenceEndDate", type: "TEXT"));
      columns.add(DbColumn(name: "url", type: "TEXT"));
      columns.add(DbColumn(name: "port", type: "INTEGER"));
      columns.add(DbColumn(name: "connection", type: "TEXT"));
      columns.add(DbColumn(name: "version", type: "TEXT"));
      columns.add(DbColumn(name: "mediaTypeHeader", type: "TEXT"));
      return columns;
    } on Exception {
      rethrow;
    }
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};
    map["id"] = id;
    map["serviceRequestUserId"] = serviceRequestUserId;
    map["accountId"] = accountId;
    map["accountName"] = accountName;
    map["apiKey"] = apiKey;
    map["tagPrefix"] = tagPrefix;
    map["licenceStartDate"] = licenceStartDate?.toIso8601String();
    map["licenceEndDate"] = licenceEndDate?.toIso8601String();
    map["url"] = url;
    map["port"] = port;
    map["connection"] = connection;
    map["version"] = version;
    map["mediaTypeHeader"] = mediaTypeHeader;
    return map;
  }

  factory AccountServiceRequestInformation.fromDB(Map<String, dynamic> map) => AccountServiceRequestInformation(
        id: map["id"],
        serviceRequestUserId: map["serviceRequestUserId"],
        accountId: map["accountId"],
        accountName: map["accountName"],
        apiKey: map["apiKey"],
        tagPrefix: map["tagPrefix"],
        licenceStartDate: map["licenceStartDate"] != null ? DateTime.tryParse(map["licenceStartDate"]) : null,
        licenceEndDate: map["licenceEndDate"] != null ? DateTime.tryParse(map["licenceEndDate"]) : null,
        url: map["url"],
        port: map["port"],
        connection: map["connection"],
        version: map["version"],
        mediaTypeHeader: map["mediaTypeHeader"],
      );

  factory AccountServiceRequestInformation.fromJson(Map<String, dynamic> map) => AccountServiceRequestInformation(
        id: map["id"],
        serviceRequestUserId: map["serviceRequestUserId"],
        accountId: map["accountId"],
        accountName: map["accountName"],
        apiKey: map["apiKey"],
        tagPrefix: map["tagPrefix"],
        licenceStartDate: map["licenceStartDate"] != null ? DateTime.tryParse(map["licenceStartDate"]) : null,
        licenceEndDate: map["licenceEndDate"] != null ? DateTime.tryParse(map["licenceEndDate"]) : null,
        url: map["url"],
        port: parseInt(map["port"]),
        connection: map["connection"],
        version: map["version"],
        mediaTypeHeader: map["mediaTypeHeader"],
      );

  List<AccountServiceRequestInformation> dynamicToList(List<dynamic> dynamicList) {
    List<AccountServiceRequestInformation> cityList = List.generate(dynamicList.length, (index) {
      return AccountServiceRequestInformation.fromJson(dynamicList[index]);
    });
    return cityList;
  }
}

int parseInt(String? map) {
  try {
    int returnValue = 0;
    if (map == null) return returnValue;
    returnValue = int.parse(map);
    return returnValue;
  } catch (e) {
    rethrow;
  }
}
