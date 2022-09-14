import 'package:flutter/material.dart';
import 'glass_container.dart';

class LogoAndBlur extends StatelessWidget {
  const LogoAndBlur({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        GlassContainer(),
      ],
    );
  }
}
