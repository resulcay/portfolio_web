import 'package:flutter/material.dart';

import '../../../constants.dart';

class AboutSectionText extends StatefulWidget {
  const AboutSectionText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  State<AboutSectionText> createState() => _AboutSectionTextState();
}

class _AboutSectionTextState extends State<AboutSectionText> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Text(
          widget.text,
          style: const TextStyle(
            fontWeight: FontWeight.w200,
            color: kTextColor,
            height: 1.5,
          ),
        ),
      ),
    );
  }
}
