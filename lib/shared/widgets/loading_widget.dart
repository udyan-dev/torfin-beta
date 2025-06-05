import 'package:flutter/material.dart';
import 'package:torfin/core/utils/app_extensions.dart';

import 'text_widget.dart';

enum LoadingWidgetEnum {
  small(constraints: BoxConstraints.tightFor(width: 16, height: 16)),
  medium(constraints: BoxConstraints.tightFor(width: 32, height: 32)),
  large(constraints: BoxConstraints.tightFor(width: 88, height: 88));

  final BoxConstraints constraints;

  const LoadingWidgetEnum({required this.constraints});
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
    this.type = LoadingWidgetEnum.small,
    required this.loadingMessage,
    this.leadingWidget,
  });

  final LoadingWidgetEnum type;
  final String loadingMessage;
  final Widget? leadingWidget;

  @override
  Widget build(BuildContext context) {
    final hasMessage = loadingMessage.isNotEmpty;

    return Align(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: hasMessage ? 8 : 0,
        children: [
          leadingWidget ?? _OptimizedProgressIndicator(type: type),
          if (hasMessage) _LoadingText(text: loadingMessage),
        ],
      ),
    );
  }
}

class _OptimizedProgressIndicator extends StatelessWidget {
  const _OptimizedProgressIndicator({required this.type});

  final LoadingWidgetEnum type;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final size = type.constraints.maxWidth;

    return SizedBox.square(
      dimension: size,
      child: RepaintBoundary(
        child: CircularProgressIndicator(
          strokeWidth: 3.0,
          valueColor: AlwaysStoppedAnimation<Color>(theme.interactive),
          backgroundColor: theme.borderSubtle01,
        ),
      ),
    );
  }
}

class _LoadingText extends StatelessWidget {
  const _LoadingText({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return TextWidget(
      text: text,
      style: TextStyle(
        fontSize: 12,
        letterSpacing: 0.32,
        color: theme.textSecondary,
      ),
    );
  }
}
