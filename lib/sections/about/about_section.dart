import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:portfolio_web/constants.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../components/custom_outlined_button.dart';
import 'components/about_section_text.dart';
import 'components/about_text.dart';
import 'components/experience_card.dart';

class AboutSection extends StatefulWidget {
  const AboutSection({super.key});

  @override
  State<AboutSection> createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1110) {
        return Container(
          constraints: const BoxConstraints(maxWidth: 1110),
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 4),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AboutText(),
                  Expanded(
                    child: AboutSectionText(
                      text: context.locale == const Locale("en")
                          ? "   Hi, I am Resul. I was born  5th of march, 1998 in city of Turkey which is Şanlıurfa. I completed my high school degree where in Science High School at same city. Then, I studied English Language for one year in Preparation School of Foreign Languages. I continue to my education in Yalova University as a 4th year Computer Engineering student."
                          : "   Merhaba ben Resul. 5 Mart 1998 Şanlıurfa doğumluyum. Lise eğitimimi aynı şehirde, Fen Lisesi'nde tamamladım. Daha sonra Hazırlık Okulu'nda bir yıl İngilizce eğitimi aldım. Yalova Üniversitesi Bilgisayar Mühendisliği 4. Sınıf öğrencisi olarak eğitimime devam etmekteyim.",
                    ),
                  ),
                  const ExperienceCard(
                    experienceInYears: "02",
                  ),
                  Expanded(
                    child: AboutSectionText(
                      text: context.locale == const Locale("en")
                          ? "   My hobbies are reading, walking, going to the movies and playing video games (fan of GTA). Besides my hobbies, I do frontend and backend developments in software. I also develop beginner level games with Unity."
                          : "   Hobilerim okumak, yürümek, sinemaya gitmek ve bilgisayar oyunları oynamak (GTA hayranıyımdır). Hobilerimin yanı sıra yazılımda frontend ve backend geliştirmeleri yapıyorum. Unity ile başlangıç seviyesinde oyunlar da geliştiriyorum.",
                    ),
                  )
                ],
              ),
              const SizedBox(height: kDefaultPadding * 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomOutlinedButton(
                    function: () {
                      _launchUrl('https://www.linkedin.com/in/resulcay/');
                    },
                    imagePath: "assets/images/hand.png",
                    buttonText: context.locale == const Locale("en")
                        ? "Hire Me"
                        : "Benimle Çalışın",
                  ),
                  const SizedBox(
                    width: kDefaultPadding * 1.5,
                  ),
                  CustomOutlinedButton(
                    function: () {
                      _launchUrl(
                          'https://drive.google.com/file/d/1aN1uTfJ3_1a5YlEq23BHfACQ4317P7lk/view?usp=sharing');
                    },
                    imagePath: "assets/images/download.png",
                    buttonText: context.locale == const Locale("en")
                        ? "Download CV"
                        : "CV' yi indir",
                  ),
                ],
              )
            ],
          ),
        );
      }
      return Container(
        constraints: const BoxConstraints(maxWidth: 1110),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AboutText(),
              Padding(
                padding: const EdgeInsets.all(50),
                child: AboutSectionText(
                  text: context.locale == const Locale("en")
                      ? "   Hi, I am Resul. I was born  5th of march, 1998 in city of Turkey which is Şanlıurfa. I completed my high school degree where in Science High School at same city. Then, I studied English Language for one year in Preparation School of Foreign Languages. I continue to my education in Yalova University as a 4th year Computer Engineering student."
                      : "   Merhaba ben Resul. 5 Mart 1998 Şanlıurfa doğumluyum. Lise eğitimimi aynı şehirde, Fen Lisesi'nde tamamladım. Daha sonra Hazırlık Okulu'nda bir yıl İngilizce eğitimi aldım. Yalova Üniversitesi Bilgisayar Mühendisliği 4. Sınıf öğrencisi olarak eğitimime devam etmekteyim.",
                ),
              ),
              const ExperienceCard(
                experienceInYears: "01",
              ),
              Padding(
                padding: const EdgeInsets.all(50),
                child: AboutSectionText(
                  text: context.locale == const Locale("en")
                      ? "   My hobbies are reading, walking, going to the movies and playing video games (fan of GTA). Besides my hobbies, I do frontend and backend developments in software. I also develop beginner level games with Unity."
                      : "   Hobilerim okumak, yürümek, sinemaya gitmek ve bilgisayar oyunları oynamak (GTA hayranıyımdır). Hobilerimin yanı sıra yazılımda frontend ve backend geliştirmeleri yapıyorum. Unity ile başlangıç seviyesinde oyunlar da geliştiriyorum.",
                ),
              ),
              const SizedBox(height: kDefaultPadding * 2),
              CustomOutlinedButton(
                function: () {
                  _launchUrl('https://www.linkedin.com/in/resulcay/');
                },
                imagePath: "assets/images/hand.png",
                buttonText: context.locale == const Locale("en")
                    ? "Hire Me"
                    : "Benimle Çalışın",
              ),
              const SizedBox(
                height: kDefaultPadding * 1.5,
              ),
              CustomOutlinedButton(
                function: () {
                  _launchUrl(
                      'https://drive.google.com/file/d/12kF50nS5F6-y8B1Y_wH6D5C7KkOB5dfL/view?usp=sharing');
                },
                imagePath: "assets/images/download.png",
                buttonText: context.locale == const Locale("en")
                    ? "Download CV"
                    : "CV' yi indir",
              )
            ],
          ),
        ),
      );
    });
  }
}

Future<void> _launchUrl(String url) async {
  final Uri uri = Uri.parse(url);

  if (!await launchUrl(uri)) {
    throw 'Could not launch $uri';
  }
}
