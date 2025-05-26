import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final TextStyle? style;

  const TextWidget({super.key, required this.text, this.style});

  @override
  Widget build(BuildContext context) {
    return Text(key: ValueKey(text), text, style: style);
  }
}
