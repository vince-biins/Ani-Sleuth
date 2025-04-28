import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

final _logger = Logger(
  printer: PrettyPrinter(),
);

class AFailure {
  final String message;
  final String? error;
  final int? statusCode;

  AFailure({
    required this.message,
    this.error,
    this.statusCode,
  }) {
    _logger
        .e('- STATUS_CODE:$statusCode \n- ERROR: $error \n- MESSAGE: $message');
  }

  factory AFailure.fromDioException(Object e) {
    if (e is DioException) {
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
    } else {
      return AFailure(
        message: 'Unknown error',
        error: e.toString(),
        statusCode: 500,
      );
    }
  }
}
