class ServiceRequestPublicResponse {
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
  String? accountPhone;

  String? serviceRequestId;
  String? referenceNo;
  DateTime? requestDate;
  DateTime? requestTime;

  String? contactPerson;
  String? contactPhone;

  String? description;
  String? note;

  double? latitude;
  double? longitude;

  ServiceRequestPublicResponse({
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

  Map<String, dynamic> toJson() => {
    'serviceRequestUserId': serviceRequestUserId,
    'companyId': companyId,
    'companyName': companyName,
    'branchId': branchId,
    'branchName': branchName,
    'isCustomer': isCustomer,
    'isOpen': isOpen,
    'assetId': assetId,
    'assetName': assetName,
    'assetSerial': assetSerial,
    'tagId': tagId,
    'tagCode': tagCode,
    'accountId': accountId,
    'accountName': accountName,
    'accountMail': accountMail,
    'accountPhone': accountPhone,
    'serviceRequestId': serviceRequestId,
    'referenceNo': referenceNo,
    'requestDate': requestDate?.toIso8601String(),
    'requestTime': requestTime?.toIso8601String(),
    'contactPerson': contactPerson,
    'contactPhone': contactPhone,
    'description': description,
    'note': note,
    'latitude': latitude,
    'longitude': longitude,
  };

  factory ServiceRequestPublicResponse.fromJson(Map<String, dynamic> map) => ServiceRequestPublicResponse(
    serviceRequestUserId: map["serviceRequestUserId"],
        companyId: map["companyId"],
        companyName: map["companyName"],
        branchId: map["branchId"],
        branchName: map["branchName"],
        isCustomer: map["isCustomer"],
        isOpen: map["isOpen"],
        assetId: map["assetId"],
        assetName: map["assetName"],
        assetSerial: map["assetSerial"],
        tagId: map["tagId"],
        tagCode: map["tagCode"],
        accountId: map["accountId"],
        accountName: map["accountName"],
        accountMail: map["accountMail"],
        accountPhone: map["accountPhone"],
        serviceRequestId: map["serviceRequestId"],
        referenceNo: map["referenceNo"],
        requestDate: map["requestDate"] != null ? DateTime.tryParse(map["requestDate"]) : DateTime.now(),
        requestTime: map["requestTime"] != null ? DateTime.tryParse(map["requestTime"]) : DateTime.now(),
        contactPerson: map["contactPerson"],
        contactPhone: map["contactPhone"],
        description: map["description"],
        note: map["note"],
        latitude: parseDouble(map["latitude"]),
        longitude: parseDouble(map["longitude"]),
      );
}

int parseInt(int? map) {
  try {
    int returnValue = 0;
    if (map == null) return returnValue;
    return returnValue;
  } catch (e) {
    rethrow;
  }
}

double parseDouble(double? map) {
  try {
    double returnValue = 0;
    if (map == null) return returnValue;
    return returnValue;
  } catch (e) {
    rethrow;
  }
}
