class DbColumn {
  String? tableName;

  String? name;
  String? type;

  String? oldName;
  String? oldType;

  DbColumn({
    this.tableName,
    this.name,
    this.type,
    this.oldName,
    this.oldType,
  });
}
