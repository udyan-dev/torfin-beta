import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:torfin/core/utils/app_extensions.dart';

import '../mixins/widget_cache_mixin.dart';

class SvgButton extends StatelessWidget with WidgetCacheMixin<SvgButton> {
  final String path;
  final VoidCallback onPressed;

  const SvgButton({super.key, required this.path, required this.onPressed});

  @override
  List<Object?> get cacheProperties => [path, onPressed];

  @override
  Widget buildWidget(BuildContext context) {
    final theme = context.theme;
    final colorFilter = theme.iconPrimary.colorFilter;

    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        path,
        colorFilter: colorFilter,
        clipBehavior: Clip.none,
      ),
    );
  }
}
