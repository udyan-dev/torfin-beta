import 'package:flutter/material.dart';
import 'package:torfin/core/utils/app_extensions.dart';

import '../../core/constants/app_constants.dart';
import '../../core/theme/app_theme.dart';
import 'text_widget.dart';

enum LoadingWidgetEnum {
  small(constraints: BoxConstraints.tightFor(width: 16, height: 16)),
  medium(constraints: BoxConstraints.tightFor(width: 32, height: 32)),
  large(constraints: BoxConstraints.tightFor(width: 88, height: 88));

  final BoxConstraints constraints;

  const LoadingWidgetEnum({required this.constraints});
}

class LoadingWidget extends StatelessWidget {
  final LoadingWidgetEnum type;
  final String loadingMessage;
  final Widget? leadingWidget;

  const LoadingWidget({
    super.key,
    this.type = LoadingWidgetEnum.small,
    required this.loadingMessage,
    this.leadingWidget,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final hasMessage = loadingMessage.isNotEmpty;

    return Align(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: hasMessage ? 8 : 0,
        children: [
          leadingWidget ?? _buildProgressIndicator(theme),
          if (hasMessage) _buildMessageText(theme),
        ],
      ),
    );
  }

  Widget _buildProgressIndicator(AppColorTheme theme) {
    return CircularProgressIndicator(
      color: theme.interactive,
      backgroundColor: theme.borderSubtle01,
      strokeWidth: 3,
      padding: EdgeInsets.zero,
      constraints: type.constraints,
    );
  }

  Widget _buildMessageText(AppColorTheme theme) {
    return TextWidget(
      text: loadingMessage,
      style: TextStyle(
        fontSize: 12,
        fontFamily: AppConstants.fontFamily,
        letterSpacing: 0.32,
        color: theme.textSecondary,
      ),
    );
  }
}
