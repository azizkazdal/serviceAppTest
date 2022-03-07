class AccountServiceRequestModel {
  DateTime? updateDate;

  Map<String, dynamic> toJson() => {
    'updateDate': updateDate?.toIso8601String(),
  };
}
