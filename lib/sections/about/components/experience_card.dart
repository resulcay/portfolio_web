import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    Key? key,
    required this.experienceInYears,
  }) : super(key: key);

  final String experienceInYears;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: const EdgeInsets.all(kDefaultPadding),
      height: 240,
      width: 255,
      decoration: BoxDecoration(
        color: const Color(0xFFF7E8FF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: const Color(0xFFEDD2FC),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 3),
                blurRadius: 6,
                color: const Color(0xFFA600FF).withOpacity(0.25),
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Text(
                  experienceInYears,
                  style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 6
                        ..color = const Color(0xFFDFA3FF).withOpacity(0.5),
                      shadows: [
                        BoxShadow(
                          offset: const Offset(0, 5),
                          blurRadius: 5,
                          color: const Color(0xFFA600FF).withOpacity(0.5),
                        )
                      ]),
                ),
                Text(
                  experienceInYears,
                  style: const TextStyle(
                    fontSize: 97,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(height: kDefaultPadding / 2),
            Text(
              context.locale == const Locale("tr")
                  ? "Yıllık Deneyim"
                  : "Years of Experience",
              style: const TextStyle(
                color: Color(0xFFA600FF),
              ),
            )
          ],
        ),
      ),
    );
  }
}
