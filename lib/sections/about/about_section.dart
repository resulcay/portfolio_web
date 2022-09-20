import 'package:flutter/material.dart';

import 'package:portfolio_web/constants.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../components/custom_outlined_button.dart';
import 'components/about_section_text.dart';
import 'components/about_text.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 4),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              AboutText(),
              Expanded(
                child: AboutSectionText(
                    text:
                        "   Hi, I am Resul. I was born  5th of march, 1998 in city of Turkey which is Şanlıurfa. I completed my high school degree where in Science High School at same city. Then, I studied English Language for one year in Preparation School of Foreign Languages. I continue to my education in Yalova University as a 4th year Computer Engineering student."),
              ),
              ExperienceCard(
                experienceInYears: "01",
              ),
              Expanded(
                child: AboutSectionText(
                    text:
                        "   My hobbies are reading, walking, going to the movies and playing video games (fan of GTA). Besides my hobbies, I do frontend and backend developments in software. I also develop beginner level games with Unity."),
              )
            ],
          ),
          const SizedBox(height: kDefaultPadding * 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomOutlinedButton(
                function: () {
                  _launchUrl(
                      'https://www.linkedin.com/in/resul-%C3%A7-6b14731a3/');
                },
                imagePath: "assets/images/hand.png",
                buttonText: "Hire Me",
              ),
              const SizedBox(
                width: kDefaultPadding * 1.5,
              ),
              CustomOutlinedButton(
                function: () {
                  _launchUrl(
                      'https://drive.google.com/file/d/1bc7O-QLR8Ue3gw692QXBDMFW5l8NxMzP/view?usp=sharing');
                },
                imagePath: "assets/images/download.png",
                buttonText: "Download CV",
              ),
            ],
          )
        ],
      ),
    );
  }
}

Future<void> _launchUrl(String url) async {
  final Uri uri = Uri.parse(url);

  if (!await launchUrl(uri)) {
    throw 'Could not launch $uri';
  }
}
