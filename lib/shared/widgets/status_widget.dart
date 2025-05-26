import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:torfin/core/utils/app_extensions.dart';

class StatusWidget extends StatelessWidget {
  final StatusType type;

  const StatusWidget.success({super.key}) : type = StatusType.success;

  const StatusWidget.failure({super.key}) : type = StatusType.failure;

  @override
  Widget build(BuildContext context) {
    final statusColor = type == StatusType.success
        ? context.theme.supportSuccess
        : context.theme.supportError;

    final statusIcon = type == StatusType.success
        ? "assets/images/checkmark_filled.svg"
        : "assets/images/error_filled.svg";

    return SvgPicture.asset(statusIcon, colorFilter: statusColor.colorFilter);
  }
}

enum StatusType { success, failure, loading }
