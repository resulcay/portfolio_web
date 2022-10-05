import 'dart:ui';
import 'package:easy_localization/easy_localization.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:neon/neon.dart';
import 'package:portfolio_web/extensions/context_extension.dart';
import 'package:portfolio_web/sections/top_section/components/person_picture.dart';

import '../../../constants.dart';

class GlassContainer extends StatefulWidget {
  final double size;
  const GlassContainer({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  State<GlassContainer> createState() => _GlassContainerState();
}

class _GlassContainerState extends State<GlassContainer> {
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        const Color.fromARGB(255, 62, 82, 138)
                                            .withOpacity(0.5),
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        context.setLocale(const Locale("tr"));
                                      });
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset(
                                          "assets/images/tr.png",
                                          scale: 3,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: Text("TR"),
                                        ),
                                      ],
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        const Color.fromARGB(255, 62, 82, 138)
                                            .withOpacity(0.5),
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        context.setLocale(const Locale("en"));
                                      });
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset(
                                          "assets/images/gb.png",
                                          scale: 3,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: Text("EN"),
                                        ),
                                      ],
                                    )),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: kDefaultPadding * 3),
                    Text(
                      "Hello Dear Guest, I am".tr(),
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.white,
                          fontSize:
                              context.locale == const Locale("tr") ? 20 : 25),
                    ),
                    const SizedBox(height: kDefaultPadding * 3),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 134, 85, 102)
                            .withOpacity(0.3),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          "Resul Çay",
                          style: TextStyle(
                            color: const Color.fromARGB(248, 179, 255, 0)
                                .withOpacity(0.8),
                            fontWeight: FontWeight.w500,
                            fontSize: constraints.maxWidth / 8,
                          ),
                        ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hello Dear Guest, I am".tr(),
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(color: Colors.white),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    const Color.fromARGB(255, 62, 82, 138)
                                        .withOpacity(0.5),
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    context.setLocale(const Locale("tr"));
                                  });
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      "assets/images/tr.png",
                                      scale: 3,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text("TR"),
                                    ),
                                  ],
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    const Color.fromARGB(255, 62, 82, 138)
                                        .withOpacity(0.5),
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    context.setLocale(const Locale("en"));
                                  });
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      "assets/images/gb.png",
                                      scale: 3,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text("EN"),
                                    ),
                                  ],
                                )),
                          )
                        ],
                      )
                    ],
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
                            fontSize: widget.size,
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
                      text: context.locale == const Locale("tr")
                          ? "Yazılım \nGeliştiricisi"
                          : "Software \nDeveloper",
                      waveColor: Colors.blueAccent,
                      boxBackgroundColor: Colors.white24,
                      boxHeight: 250,
                      boxWidth: 450,
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
