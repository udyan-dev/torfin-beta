import 'package:flutter/material.dart';
import 'package:torfin/core/utils/app_extensions.dart';

import '../../core/constants/app_constants.dart';
import 'status_widget.dart';
import 'text_widget.dart';

class LoadingWidget extends StatelessWidget {
  final BoxConstraints boxConstraints;
  final String loadingMessage;
  final StatusType statusType;

  const LoadingWidget.small({
    super.key,
    this.loadingMessage = "",
    required this.statusType,
  }) : boxConstraints = const BoxConstraints.tightFor(width: 16, height: 16);

  const LoadingWidget.medium({
    super.key,
    this.loadingMessage = "",
    required this.statusType,
  }) : boxConstraints = const BoxConstraints.tightFor(width: 32, height: 32);

  const LoadingWidget.large({
    super.key,
    this.loadingMessage = "",
    required this.statusType,
  }) : boxConstraints = const BoxConstraints.tightFor(width: 88, height: 88);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: loadingMessage.isNotEmpty ? 8 : 0,
        children: [
          switch (statusType) {
            StatusType.loading => CircularProgressIndicator(
              color: context.theme.interactive,
              backgroundColor: context.theme.borderSubtle01,
              strokeWidth: 3,
              padding: EdgeInsets.zero,
              constraints: boxConstraints,
            ),
            StatusType.success => const StatusWidget.success(),
            StatusType.failure => const StatusWidget.failure(),
          },
          if (loadingMessage.isNotEmpty)
            TextWidget(
              text: loadingMessage,
              style: TextStyle(
                fontSize: 12,
                fontFamily: AppConstants.fontFamily,
                letterSpacing: 0.32,
                color: context.theme.textSecondary,
              ),
            ),
        ],
      ),
    );
  }
}
