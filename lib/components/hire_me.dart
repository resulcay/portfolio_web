import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';
import 'custom_outlined_button.dart';

class HireMeCard extends StatelessWidget {
  const HireMeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [kDefaultShadow]),
      child: Row(
        children: [
          Image.asset(
            "assets/images/email.png",
            height: 80,
            width: 80,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: SizedBox(
              height: 80,
              child: VerticalDivider(),
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Starting New Project?",
                  style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold)),
              SizedBox(height: kDefaultPadding / 2),
              Text("Get an estimate for the new project",
                  style: TextStyle(fontWeight: FontWeight.w200))
            ],
          )),
          CustomOutlinedButton(
            function: () {
              _launchUrl('https://www.linkedin.com/in/resul-%C3%A7-6b14731a3/');
            },
            imagePath: "assets/images/hand.png",
            buttonText: "Hire Me",
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
