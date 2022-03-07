class AppResult<T> {
  T result;
  String? message;
  String? exception;
  int returnCode;
  bool isSuccess;
  int dataProcessedCount;
  int dataTotalCount;

  AppResult({
    required this.result,
    this.message,
    this.exception,
    this.returnCode = 999,
    this.isSuccess = false,
    this.dataProcessedCount = 0,
    this.dataTotalCount = 0,
  });
}
