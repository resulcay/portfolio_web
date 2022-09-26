import 'package:flutter/material.dart';
import 'package:portfolio_web/constants.dart';

import 'components/logo_and_blur.dart';
import 'components/menu.dart';
import 'components/person_picture.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 1110) {
        return Container(
          alignment: Alignment.center,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: kDefaultPadding),
            width: 1200,
            child: const LogoAndBlur(size: 70),
          ),
        );
      }
      return Container(
        alignment: Alignment.center,
        constraints: const BoxConstraints(
          maxHeight: 900,
          minHeight: 700,
        ),
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(top: kDefaultPadding),
          width: 1200,
          child: Stack(
            children: const [
              LogoAndBlur(
                size: 120,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: PersonPicture(),
              ),
              Positioned(
                bottom: 0,
                child: Menu(),
              ),
            ],
          ),
        ),
      );
    });
  }
}
