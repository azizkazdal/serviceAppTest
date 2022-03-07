import 'package:service_request/_dataModel/_base/base_entity.dart';

abstract class Entity implements BaseEntity {
  bool? isActive;
  String? createdUser;
  DateTime? createdDate;
  String? updatedUser;
  DateTime? updatedDate;
}
