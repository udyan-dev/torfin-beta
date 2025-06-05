import 'package:flutter/material.dart';

import 'storage_service.dart';

class ThemeService {
  ThemeService({required this.storageService});

  final StorageService storageService;
  late final ValueNotifier<ThemeMode> _themeMode;

  ValueNotifier<ThemeMode> get themeMode => _themeMode;

  Future<void> initialize() async {
    final theme = await storageService.getTheme();
    _themeMode = ValueNotifier(theme);
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    if (_themeMode.value == mode) return;
    _themeMode.value = mode;
    await storageService.setTheme(mode);
  }

  void dispose() {
    _themeMode.dispose();
  }
}
