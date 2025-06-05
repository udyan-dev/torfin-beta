import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

extension ExTheme on BuildContext {
  static final Map<int, TextTheme> _textThemeCache = <int, TextTheme>{};
  static final Map<int, AppColorTheme> _colorThemeCache = <int, AppColorTheme>{};
  static final Map<int, bool> _brightnessCache = <int, bool>{};

  TextTheme get textTheme {
    final themeData = Theme.of(this);
    final key = themeData.hashCode;
    return _textThemeCache[key] ??= themeData.textTheme;
  }

  AppColorTheme get theme {
    final themeData = Theme.of(this);
    final key = themeData.hashCode;
    return _colorThemeCache[key] ??= themeData.extension<AppColorTheme>()!;
  }

  bool get isDark {
    final themeData = Theme.of(this);
    final key = themeData.hashCode;
    return _brightnessCache[key] ??= themeData.brightness == Brightness.dark;
  }
}

extension ExColor on Color {
  ColorFilter get colorFilter => ColorFilter.mode(this, BlendMode.srcIn);
}
