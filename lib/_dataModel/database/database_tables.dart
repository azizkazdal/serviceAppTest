class DatabaseTables {
  static String tablePrefix = "CREATE TABLE IF NOT EXISTS ";

  static String entity = "id TEXT PRIMARY KEY , isActive INTEGER, createdUser TEXT , createdDate TEXT , updatedUser TEXT, updatedDate TEXT ";
  static String baseEntity = "id TEXT PRIMARY KEY ";

  static String syncProperties = "isSynced INTEGER, syncDate TEXT";
}
