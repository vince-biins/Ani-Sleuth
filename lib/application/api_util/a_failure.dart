import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

final _logger = Logger(
  filter: null,
  printer: PrettyPrinter(),
  output: null,
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
        .e('STATUS_CODE:$statusCode \n- ERROR: $error \n- MESSAGE: $message');
  }

  factory AFailure.fromDioException(DioException e) {
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
