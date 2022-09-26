import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:neon/neon.dart';
import 'package:portfolio_web/extensions/context_extension.dart';
import 'package:portfolio_web/sections/top_section/components/menu.dart';
import 'package:portfolio_web/sections/top_section/components/person_picture.dart';

import '../../../constants.dart';

class GlassContainer extends StatelessWidget {
  final double size;
  const GlassContainer({
    Key? key,
    required this.size,
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
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 1110) {
              return Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
                color: Colors.white.withOpacity(0),
                constraints: const BoxConstraints(
                  maxWidth: 1110,
                ),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          icon: const Icon(
                            Icons.menu,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: kDefaultPadding * 3),
                    Text(
                      "Hello Dear Guest, I am",
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: Colors.white),
                    ),
                    const SizedBox(height: kDefaultPadding * 3),
                    Neon(
                      text: 'Resul Çay',
                      color: Colors.purple,
                      font: NeonFont.Cyberpunk,
                      flickeringText: true,
                      flickeringLetters: const [0, 1, 7, 8],
                      glowing: true,
                      glowingDuration: const Duration(seconds: 2),
                      textStyle: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: size,
                          color: Colors.white),
                    ),
                    const SizedBox(height: kDefaultPadding * 3),
                    Container(
                      height: 250,
                      width: 450,
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
                            color: Colors.blue),
                      ),
                    ),
                    const PersonPicture()
                  ],
                ),
              );
            }
            return Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
              color: Colors.white.withOpacity(0),
              constraints: BoxConstraints(
                maxWidth: 1110,
                maxHeight: context.height * 0.8,
              ),
              width: double.infinity,
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
                        color: Colors.purple,
                        font: NeonFont.Cyberpunk,
                        flickeringText: true,
                        flickeringLetters: const [0, 1, 7, 8],
                        glowing: true,
                        glowingDuration: const Duration(seconds: 2),
                        textStyle: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: size,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: kDefaultPadding * 3),
                  Container(
                    height: 250,
                    width: 450,
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
                          color: Colors.blue),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
