import 'package:flutter/material.dart';

import '../constants.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    Key? key,
    required this.imagePath,
    required this.buttonText,
    required this.function,
  }) : super(key: key);

  final String imagePath;
  final String buttonText;
  final void Function() function;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: kDefaultPadding,
            horizontal: kDefaultPadding * 2.5,
          ),
        ),
        onPressed: function,
        child: Row(
          children: [
            Image.asset(
              imagePath,
              height: 40,
            ),
            const SizedBox(width: kDefaultPadding),
            Text(buttonText)
          ],
        ),
      ),
    );
  }
}
