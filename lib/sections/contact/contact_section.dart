import 'package:flutter/material.dart';
import 'package:portfolio_web/components/section_title.dart';
import 'package:portfolio_web/constants.dart';

import '../../components/custom_outlined_button.dart';
import 'components/social_card.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          image: AssetImage("assets/images/bg_img_2.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: const [
          SizedBox(height: kDefaultPadding * 2.5),
          SectionTitle(
            title: "For Project inquiry and Information",
            subTitle: "Contact Me",
            color: Color(0xFF07E24A),
          ),
          ContactBox()
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      margin: const EdgeInsets.only(),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocialCard(
                userName: "resulcayop@outlook.com",
                iconPath: "assets/images/skype.png",
                color: const Color(0xFFD9FFFC),
                function: () {},
              ),
              SocialCard(
                userName: "+90 542 220 71 70",
                iconPath: "assets/images/whatsapp.png",
                color: const Color(0xFFE4FFC7),
                function: () {},
              ),
              SocialCard(
                userName: "resulcay",
                iconPath: "assets/images/messenger.png",
                color: const Color(0xFFE8F0F9),
                function: () {},
              ),
            ],
          ),
          const SizedBox(height: kDefaultPadding * 2),
          const ContactForm()
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: "Your Name",
                hintText: "Enter Your Name",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: "Your Email",
                hintText: "Enter Your Email Address",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: "Project Type",
                hintText: "Enter Your Project Type",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: "Project Budget",
                hintText: "Enter Your Project Budget",
              ),
            ),
          ),
          TextField(
            maxLines: 7,
            onChanged: (value) {},
            decoration: const InputDecoration(
              labelText: "Your Description",
              hintText: "Enter Your Description",
            ),
          ),
          const SizedBox(height: kDefaultPadding * 2),
          Center(
            child: FittedBox(
              child: CustomOutlinedButton(
                function: () {},
                imagePath: "assets/images/contact_icon.png",
                buttonText: "Contact Me",
              ),
            ),
          )
        ],
      ),
    );
  }
}
