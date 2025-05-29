import 'package:flutter/material.dart';

import '../../shared/widgets/loading_widget.dart';
import '../../shared/widgets/status_widget.dart';
import '../constants/app_constants.dart';
import 'data_state.dart';

sealed class AppUtility {
  static Widget getLoadingWidgetByStatus(
    DataEnum status, {
    String? message,
    LoadingWidgetEnum loadingWidgetSize = LoadingWidgetEnum.small,
  }) {
    return switch (status) {
      DataEnum.initial || DataEnum.loading => LoadingWidget(
        loadingMessage: message ?? AppConstants.splashMessage,
        type: loadingWidgetSize,
      ),
      DataEnum.success => LoadingWidget(
        loadingMessage: message ?? AppConstants.success,
        leadingWidget: const StatusWidget.success(),
        type: loadingWidgetSize,
      ),
      DataEnum.error => LoadingWidget(
        loadingMessage: message ?? AppConstants.error,
        leadingWidget: const StatusWidget.error(),
        type: loadingWidgetSize,
      ),
    };
  }
}
