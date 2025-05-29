import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:torfin/core/utils/app_extensions.dart';

import '../../core/constants/app_constants.dart';
import '../../core/theme/app_theme.dart';

class StatusWidget extends StatelessWidget {
  final StatusType type;

  const StatusWidget.success({super.key}) : type = StatusType.success;

  const StatusWidget.error({super.key}) : type = StatusType.failure;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final (color, iconPath) = _getStatusProperties(theme);

    return SvgPicture.asset(
      iconPath,
      colorFilter: color.colorFilter,
    );
  }

  (Color, String) _getStatusProperties(AppColorTheme theme) {
    return switch (type) {
      StatusType.success => (theme.supportSuccess, AppConstants.checkmarkIcon),
      StatusType.failure => (theme.supportError, AppConstants.errorIcon),
      StatusType.loading => (theme.interactive, AppConstants.loadingIcon),
    };
  }
}

enum StatusType { success, failure, loading }
