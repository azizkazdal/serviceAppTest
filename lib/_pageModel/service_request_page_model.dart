import 'package:flutter/widgets.dart';

class ServiceRequestPageModel {
  String? serviceRequestUserId;
  String? companyId;
  String? companyName;

  String? branchId;
  String? branchName;

  bool isCustomer;
  bool isOpen;

  String? assetId;
  String? assetName;
  String? assetSerial;

  String? tagId;
  String? tagCode;

  String? accountId;
  String? accountName;

  String? accountMail;
  var accountMailController = TextEditingController();

  String? accountPhone;
  var accountPhoneController = TextEditingController();

  String? serviceRequestId;
  String? referenceNo;
  DateTime? requestDate;
  DateTime? requestTime;

  String? contactPerson;
  var contactPersonController = TextEditingController();

  String? contactPhone;
  var contactPhoneController = TextEditingController();

  String? description;
  var descriptionController = TextEditingController();

  String? note;
  var noteController = TextEditingController();

  double? latitude;
  var latitudeController = TextEditingController();

  double? longitude;
  var longitudeController = TextEditingController();

  ServiceRequestPageModel({
    this.serviceRequestUserId,
    this.companyId,
    this.companyName,
    this.branchId,
    this.branchName,
    this.isCustomer = false,
    this.isOpen = false,
    this.assetId,
    this.assetName,
    this.assetSerial,
    this.tagId,
    this.tagCode,
    this.accountId,
    this.accountName,
    this.accountMail,
    this.accountPhone,
    this.serviceRequestId,
    this.referenceNo,
    this.requestDate,
    this.requestTime,
    this.contactPerson,
    this.contactPhone,
    this.description,
    this.note,
    this.latitude,
    this.longitude,
  });
}
