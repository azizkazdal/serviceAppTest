import '../_base/db_column.dart';

abstract class DbOperation{
  List<DbColumn> getColumns();
}