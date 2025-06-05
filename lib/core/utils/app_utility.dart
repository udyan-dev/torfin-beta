import 'package:flutter/material.dart';

import '../../shared/widgets/loading_widget.dart';
import '../../shared/widgets/status_widget.dart';
import '../constants/app_constants.dart';
import 'data_state.dart';

sealed class AppUtility {
  static const _successWidget = StatusWidget.success();
  static const _errorWidget = StatusWidget.error();

  static const _defaultMessages = {
    DataEnum.initial: AppConstants.splashMessage,
    DataEnum.loading: AppConstants.splashMessage,
    DataEnum.success: AppConstants.success,
    DataEnum.error: AppConstants.error,
  };

  static Widget getLoadingWidgetByStatus(
    DataEnum status, {
    String? message,
    LoadingWidgetEnum loadingWidgetSize = LoadingWidgetEnum.small,
  }) {
    final loadingMessage = message ?? _defaultMessages[status]!;

    return switch (status) {
      DataEnum.initial || DataEnum.loading => LoadingWidget(
        loadingMessage: loadingMessage,
        type: loadingWidgetSize,
      ),
      DataEnum.success => const LoadingWidget(
        loadingMessage: AppConstants.success,
        leadingWidget: _successWidget,
      ),
      DataEnum.error => const LoadingWidget(
        loadingMessage: AppConstants.error,
        leadingWidget: _errorWidget,
      ),
    };
  }
}
