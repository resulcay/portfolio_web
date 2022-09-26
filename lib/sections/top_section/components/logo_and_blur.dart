import 'package:flutter/material.dart';
import 'glass_container.dart';

class LogoAndBlur extends StatelessWidget {
  final double size;
  const LogoAndBlur({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GlassContainer(
          size: size,
        ),
      ],
    );
  }
}
