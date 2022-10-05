import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_web/models/contact_form_model.dart';
import 'package:provider/provider.dart';

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
    bool localIsLoading = Provider.of<ContactFormModel>(context).isLoading;
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
            localIsLoading == false
                ? Image.asset(
                    imagePath,
                    height: 40,
                  )
                : const CircularProgressIndicator(),
            const SizedBox(width: kDefaultPadding),
            Text(localIsLoading == false
                ? buttonText
                : context.locale == const Locale("en")
                    ? "Sending"
                    : "Gönderiliyor")
          ],
        ),
      ),
    );
  }
}
