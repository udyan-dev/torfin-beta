import 'package:flutter/material.dart';

mixin WidgetCacheMixin<T extends StatelessWidget> on StatelessWidget {
  static final Map<int, Widget> _cache = {};

  @pragma('vm:prefer-inline')
  int get _cacheKey {
    var hash = runtimeType.hashCode;
    final props = cacheProperties;
    for (final prop in props) {
      hash = hash * 31 + (prop?.hashCode ?? 0);
    }
    return hash;
  }

  @pragma('vm:prefer-inline')
  List<Object?> get cacheProperties => [hashCode];

  @override
  Widget build(BuildContext context) {
    final key = _cacheKey;
    return _cache[key] ??= buildWidget(context);
  }

  @pragma('vm:prefer-inline')
  Widget buildWidget(BuildContext context);
}
