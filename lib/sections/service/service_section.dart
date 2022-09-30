import 'package:flutter/material.dart';
import 'package:portfolio_web/constants.dart';
import 'package:portfolio_web/models/service_model.dart';

import '../../components/section_title.dart';
import '../../home_screen.dart';
import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        constraints: const BoxConstraints(maxWidth: 1110),
        child: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < 1110) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SectionTitle(
                  title: "My Strong Arenas",
                  subTitle: "Service Offerings",
                  color: Color(0xFFFF0000),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    services.length,
                    (index) => ServiceCard(
                      index: index,
                      function: () {
                        scrollToIndex(3, scrollController, 5000);
                      },
                    ),
                  ),
                )
              ],
            );
          }

          return Column(
            children: [
              const SectionTitle(
                title: "My Strong Arenas",
                subTitle: "Service Offerings",
                color: Color(0xFFFF0000),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  services.length,
                  (index) => ServiceCard(
                    index: index,
                    function: () {
                      scrollToIndex(3, scrollController, 1310);
                    },
                  ),
                ),
              )
            ],
          );
        }));
  }
}
