import 'package:flutter/material.dart';

import 'storage_service.dart';

class ThemeService {
  final StorageService storageService;

  final ValueNotifier<ThemeMode> _themeMode = ValueNotifier(ThemeMode.system);

  ThemeService({required this.storageService});

  ValueNotifier<ThemeMode> get themeMode => _themeMode;

  Future<void> initialize() async {
    final savedTheme = await storageService.getTheme();
    _themeMode.value = savedTheme;
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    _themeMode.value = mode;
    await storageService.setTheme(mode);
  }

  void dispose() {
    _themeMode.dispose();
  }
}
