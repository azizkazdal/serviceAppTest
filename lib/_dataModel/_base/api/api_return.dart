class ApiReturn<T> {
  T? apiResult;
  String apiException;
  String apiCustomException;
  int apiReturnCode = 0;
  bool apiIsSuccess = false;

  ApiReturn({
    this.apiResult,
    this.apiException = "",
    this.apiCustomException = "",
    this.apiReturnCode = 0,
    this.apiIsSuccess = false,
  });

  factory ApiReturn.fromJson(Map<String, dynamic> json) => ApiReturn(
        apiResult: json["apiResult"],
        apiException: json["apiException"],
        apiCustomException: json["apiCustomException"],
        apiReturnCode: json["apiReturnCode"],
        apiIsSuccess: json["apiIsSuccess"],
      );
}
