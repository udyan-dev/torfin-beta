import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

extension ExTheme on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  AppColorTheme get theme => Theme.of(this).extension<AppColorTheme>()!;
}

extension ExColor on Color {
  ColorFilter get colorFilter => ColorFilter.mode(this, BlendMode.srcIn);
}
