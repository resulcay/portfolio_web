import 'package:flutter/material.dart';
import 'package:portfolio_web/components/section_title.dart';
import 'package:portfolio_web/constants.dart';
import 'package:portfolio_web/models/feedback_model.dart';
import 'package:url_launcher/url_launcher.dart';

import 'components/feedback_card.dart';

class FeedbackSection extends StatelessWidget {
  const FeedbackSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 1110) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
          child: Column(
            children: [
              const SectionTitle(
                title: "Client's testimonials that inspired me a lot",
                subTitle: "Feedback Received",
                color: Color(0xFF00B1FF),
              ),
              const SizedBox(height: kDefaultPadding),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  feedBacks.length,
                  (index) => FeedbackCard(
                    index: index,
                    function: () {
                      switch (index) {
                        case 0:
                          _launchUrl(
                              "https://www.linkedin.com/in/hayri-can-efe-5b2a89169/");
                          break;
                        case 1:
                          _launchUrl("https://www.linkedin.com/in/sefazor/");
                          break;
                        case 2:
                          _launchUrl(
                              "https://www.linkedin.com/in/ismail-aslan-698a30234/");
                          break;
                        default:
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      }
      return Container(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
        constraints: const BoxConstraints(maxWidth: 1110),
        child: Column(
          children: [
            const SectionTitle(
                title: "Client's testimonials that inspired me a lot",
                subTitle: "Feedback Received",
                color: Color(0xFF00B1FF)),
            const SizedBox(height: kDefaultPadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                feedBacks.length,
                (index) => FeedbackCard(
                  index: index,
                  function: () {
                    switch (index) {
                      case 0:
                        _launchUrl(
                            "https://www.linkedin.com/in/hayri-can-efe-5b2a89169/");
                        break;
                      case 1:
                        _launchUrl("https://www.linkedin.com/in/sefazor/");
                        break;
                      case 2:
                        _launchUrl(
                            "https://www.linkedin.com/in/ismail-aslan-698a30234/");
                        break;
                      default:
                    }
                  },
                ),
              ),
            ),
          ],
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
