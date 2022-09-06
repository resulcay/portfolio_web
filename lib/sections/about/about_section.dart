// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:portfolio_web/constants.dart';

import 'components/about_section_text.dart';
import 'components/about_text.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      child: Row(
        children: const [
          AboutText(),
          Expanded(
            child: AboutSectionText(
                text:
                    "   Here some stories about me Here some stories about me Here some stories about me Here some stories about me Here some stories about me Here some stories about me Here some stories about me Here some stories about me Here some stories about"),
          ),
          ExperienceCard(
            experienceInYears: "01",
          ),
          Expanded(
            child: AboutSectionText(
                text:
                    "   Here some stories about me Here some stories about me Here some stories about me Here some stories about me Here some stories about me Here some stories about me Here some stories about me Here some stories about me Here some stories about"),
          )
        ],
      ),
    );
  }
}
