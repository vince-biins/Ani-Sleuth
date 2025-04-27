import 'package:ani_sleuth/application/api_util/a_failure.dart';
import 'package:dio/dio.dart';

mixin ApiError {
  AFailure mapDioExceptionToApiError(DioException e) {
    if (e.response?.data != null) {
      final dynamic errorData = e.response!.data;
      if (errorData is Map<String, dynamic>) {
        return AFailure(
          statusCode: errorData['status'] as int?,
          message: errorData['message'] as String? ?? 'API error',
          error: errorData['error'] as String?,
        );
      } else {
        return AFailure(
          message: 'API error',
          statusCode: e.response?.statusCode,
          error: 'Unexpected error format: ${e.response?.data}',
        );
      }
    } else {
      return AFailure(
        message: 'Network error',
        error: e.message,
        statusCode: e.response?.statusCode,
      );
    }
  }
}
