import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:neon/neon.dart';
import 'package:portfolio_web/extensions/context_extension.dart';

import '../../../constants.dart';

class GlassContainer extends StatelessWidget {
  const GlassContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10,
          sigmaY: 10,
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          constraints: BoxConstraints(
            maxWidth: 1110,
            maxHeight: context.height * 0.8,
          ),
          width: double.infinity,
          color: Colors.white.withOpacity(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: kDefaultPadding * 3),
              Text(
                "Hello Dear Guest, I am",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(height: kDefaultPadding * 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Neon(
                    text: 'Resul Çay',
                    color: Colors.lightBlue,
                    font: NeonFont.Cyberpunk,
                    flickeringText: true,
                    flickeringLetters: const [0, 1, 7, 8],
                    glowing: true,
                    glowingDuration: const Duration(seconds: 2),
                    textStyle: const TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 150,
                        color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: kDefaultPadding * 3),
              Container(
                height: 300,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextLiquidFill(
                  text: 'Software \nDeveloper',
                  waveColor: Colors.blueAccent,
                  boxBackgroundColor: Colors.white24,
                  boxHeight: 300,
                  boxWidth: 500,
                  textStyle: const TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat",
                      color: Colors.green),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
