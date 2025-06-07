import 'package:flutter/material.dart';

import '../mixins/widget_cache_mixin.dart';

class TextWidget extends StatelessWidget with WidgetCacheMixin<TextWidget> {
  const TextWidget({
    super.key,
    required this.text,
    this.style,
    this.maxLines = 1,
    this.overflow = TextOverflow.ellipsis,
    this.textAlign,
  });

  final String text;
  final TextStyle? style;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;

  @override
  List<Object?> get cacheProperties => [text, style, maxLines, overflow, textAlign];

  @override
  Widget buildWidget(BuildContext context) {
    return Text(
      text,
      style: style,
      textWidthBasis: TextWidthBasis.longestLine,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
    );
  }
}
