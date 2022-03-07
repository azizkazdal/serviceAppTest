import '../../_dataModel/_base/app_result.dart';

class BaseService {
  AppResult<T?> success<T>(T t, String message, int dataProcessedCount, int dataTotalCount) {
    AppResult<T?> result = AppResult<T>(result: t);
    result.result = t;
    result.message = message;
    result.exception = "";
    result.returnCode = 200;
    result.isSuccess = true;
    result.dataProcessedCount = dataProcessedCount;
    result.dataTotalCount = dataTotalCount;
    return result;
  }

  AppResult<T?> failed<T>(T t, String message, int dataProcessedCount, int dataTotalCount, Exception exception) {
    AppResult<T?> result = AppResult<T?>(result: t);
    result.result = t;
    result.message = "Mesaj : $message Hata : ${exception.toString()}";
    result.exception = exception.toString();
    result.returnCode = 999;
    result.isSuccess = false;
    result.dataProcessedCount = dataProcessedCount;
    result.dataTotalCount = dataTotalCount;
    return result;
  }
}
