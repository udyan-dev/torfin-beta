import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:torfin/core/utils/app_extensions.dart';

import '../../core/constants/app_constants.dart';
import '../../core/theme/app_theme.dart';

enum StatusWidgetSize {
  small(16),
  medium(20),
  large(24);

  final double value;
  const StatusWidgetSize(this.value);
}

class StatusWidget extends StatelessWidget {
  const StatusWidget.success({
    super.key,
    this.size = StatusWidgetSize.small,
  }) : type = StatusType.success;

  const StatusWidget.error({
    super.key,
    this.size = StatusWidgetSize.small,
  }) : type = StatusType.failure;

  final StatusType type;
  final StatusWidgetSize size;

  @override
  Widget build(BuildContext context) {
    return _StatusIcon(type: type, size: size);
  }
}

class _StatusIcon extends StatelessWidget {
  const _StatusIcon({
    required this.type,
    required this.size,
  });

  final StatusType type;
  final StatusWidgetSize size;

  static const _iconPaths = {
    StatusType.success: AppConstants.checkmarkIcon,
    StatusType.failure: AppConstants.errorIcon,
    StatusType.loading: AppConstants.loadingIcon,
  };

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final iconPath = _iconPaths[type]!;
    final color = _getColor(theme);

    return SvgPicture.asset(
      iconPath,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      width: size.value,
      height: size.value,
      clipBehavior: Clip.none,
    );
  }

  Color _getColor(AppColorTheme theme) => switch (type) {
        StatusType.success => theme.supportSuccess,
        StatusType.failure => theme.supportError,
        StatusType.loading => theme.interactive,
      };
}

enum StatusType { success, failure, loading }
