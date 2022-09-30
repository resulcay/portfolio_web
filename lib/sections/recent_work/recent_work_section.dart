import 'package:flutter/material.dart';
import 'package:portfolio_web/components/section_title.dart';
import 'package:portfolio_web/constants.dart';
import 'package:portfolio_web/models/recent_work_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../components/hire_me.dart';
import 'components/recent_work_card.dart';

class RecentWorkSection extends StatefulWidget {
  const RecentWorkSection({super.key});

  @override
  State<RecentWorkSection> createState() => _RecentWorkSectionState();
}

class _RecentWorkSectionState extends State<RecentWorkSection> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 1110) {
        return Container(
          margin: const EdgeInsets.only(top: kDefaultPadding * 6),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFFF7E8FF),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/recent_work_bg.png"),
            ),
          ),
          child: Column(
            children: [
              const SectionTitle(
                title: "My Strong Arenas",
                subTitle: "Recent Works",
                color: Color(0xFFFFB100),
              ),
              const SizedBox(height: kDefaultPadding * 1.5),
              SizedBox(
                width: 1110,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Wrap(
                      spacing: kDefaultPadding,
                      runSpacing: kDefaultPadding,
                      children: List.generate(
                        recentWorks.length,
                        (index) => RecentWorkCard(
                          index: index,
                          function: () {
                            switch (index) {
                              case 0:
                                _launchUrl(
                                    "https://github.com/resulcay/baby_name_generator");
                                break;
                              case 1:
                                _launchUrl(
                                    "https://github.com/resulcay/test_pro_mobile_app");
                                break;
                              case 2:
                                _launchUrl(
                                    "https://github.com/resulcay/plant_app");
                                break;
                              case 3:
                                _launchUrl(
                                    "https://github.com/resulcay/animated_tesla_car_control_app");
                                break;
                              default:
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: kDefaultPadding * 5)
            ],
          ),
        );
      }
      return Container(
        margin: const EdgeInsets.only(top: kDefaultPadding * 6),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFFF7E8FF),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/recent_work_bg.png"),
          ),
        ),
        child: Column(
          children: [
            Transform.translate(
              offset: const Offset(0, -80),
              child: const HireMeCard(),
            ),
            const SectionTitle(
              title: "My Strong Arenas",
              subTitle: "Recent Works",
              color: Color(0xFFFFB100),
            ),
            const SizedBox(height: kDefaultPadding * 1.5),
            SizedBox(
              width: 1110,
              child: Wrap(
                spacing: kDefaultPadding,
                runSpacing: kDefaultPadding,
                children: List.generate(
                  recentWorks.length,
                  (index) => RecentWorkCard(
                    index: index,
                    function: () {
                      switch (index) {
                        case 0:
                          _launchUrl(
                              "https://github.com/resulcay/baby_name_generator");
                          break;
                        case 1:
                          _launchUrl(
                              "https://github.com/resulcay/test_pro_mobile_app");
                          break;
                        case 2:
                          _launchUrl("https://github.com/resulcay/plant_app");
                          break;
                        case 3:
                          _launchUrl(
                              "https://github.com/resulcay/animated_tesla_car_control_app");
                          break;
                        default:
                      }
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: kDefaultPadding * 5)
          ],
        ),
      );
    });
  }

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri)) {
      throw 'Could not launch $uri';
    }
  }
}
