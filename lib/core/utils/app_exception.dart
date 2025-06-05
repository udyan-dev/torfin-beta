import 'dart:io';

import 'package:dio/dio.dart';

import '../constants/app_constants.dart';

class AppException implements Exception {
  final AppExceptionType type;
  final String message;
  final int? statusCode;
  final Object? error;

  const AppException({
    required this.type,
    required this.message,
    this.statusCode,
    this.error,
  });

  factory AppException.fromDioError(DioException e) {
    final statusCode = e.response?.statusCode;

    // Handle specific Dio exceptions
    switch (e.type) {
      case DioExceptionType.cancel:
        return AppException(
          type: AppExceptionType.cancel,
          message: AppConstants.requestCancelledMessage,
          statusCode: statusCode,
          error: e.response,
        );
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.connectionError:
        return AppException(
          type: AppExceptionType.connectionTimeout,
          message: AppConstants.connectionFailedMessage,
          statusCode: statusCode,
          error: e.response,
        );
      case DioExceptionType.sendTimeout:
        return AppException(
          type: AppExceptionType.sendTimeout,
          message: AppConstants.sendTimeoutMessage,
          statusCode: statusCode,
          error: e.response,
        );
      case DioExceptionType.receiveTimeout:
        return AppException(
          type: AppExceptionType.receiveTimeout,
          message: AppConstants.receiveTimeoutMessage,
          statusCode: statusCode,
          error: e.response,
        );
      case DioExceptionType.badResponse:
        return AppException(
          type: AppExceptionType.badResponse,
          message: e.response?.statusMessage ?? AppConstants.badResponseMessage,
          statusCode: statusCode,
          error: e.response,
        );
      case DioExceptionType.badCertificate:
        return AppException(
          type: AppExceptionType.badCertificate,
          message: AppConstants.badCertificateMessage,
          statusCode: statusCode,
          error: e.response,
        );
      case DioExceptionType.unknown:
        return _handleUnknownError(e, statusCode);
    }
  }

  static AppException _handleUnknownError(DioException e, int? statusCode) {
    if (e.error is SocketException) {
      return AppException(
        type: AppExceptionType.noInternet,
        message: AppConstants.noInternetError,
        statusCode: statusCode,
        error: e.response,
      );
    }
    if (e.error is HttpException) {
      return AppException(
        type: AppExceptionType.noInternet,
        message: AppConstants.serverConnectionError,
        statusCode: statusCode,
        error: e.response,
      );
    }
    return AppException(
      type: AppExceptionType.unknown,
      message: e.message ?? AppConstants.unknownErrorMessage,
      statusCode: statusCode,
      error: e.response,
    );
  }

  factory AppException.parseError({Object? error}) {
    return AppException(
      type: AppExceptionType.parseError,
      message: AppConstants.parseDataError,
      error: error,
    );
  }

  @override
  String toString() => 'AppException: $message (Type: $type)';
}

enum AppExceptionType {
  cancel,
  connectionTimeout,
  sendTimeout,
  receiveTimeout,
  badResponse,
  noInternet,
  unknown,
  badCertificate,
  parseError,
}
