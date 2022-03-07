class DataReturn<T> {
  DataReturn({
    this.dataResult,
    this.dataIsSuccess = false,
    this.dataError = "",
    this.dataCustomError = "",
    this.dataReturnCode = 0,
    this.dataCount = 0,
  });

  T? dataResult;
  bool dataIsSuccess = false;
  String dataError = "";
  String dataCustomError = "";
  int dataReturnCode = 0;
  int dataCount = 0;

  factory DataReturn.fromJson(Map<String, dynamic> json) => DataReturn(
        dataResult: json["dataResult"],
        dataIsSuccess: json["dataIsSuccess"],
        dataError: json["dataError"],
        dataCustomError: json["dataCustomError"],
        dataReturnCode: json["dataReturnCode"],
        dataCount: json["dataCount"],
      );
}
