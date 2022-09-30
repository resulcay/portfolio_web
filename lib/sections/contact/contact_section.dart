import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:portfolio_web/components/section_title.dart';
import 'package:portfolio_web/constants.dart';
import 'package:portfolio_web/models/contact_form_model.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../components/custom_outlined_button.dart';
import 'components/social_card.dart';

TextEditingController clientNameTextController = TextEditingController();
TextEditingController clientMailTextController = TextEditingController();
TextEditingController clientDescriptionTextController = TextEditingController();
TextEditingController projectTypeTextController = TextEditingController();
TextEditingController projectBudgetTextController = TextEditingController();

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
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 1110) {
          return Container(
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SocialCard(
                  userName: "+90 542 220 71 70            ",
                  iconPath: "assets/images/whatsapp.png",
                  color: const Color(0xFFD9FFFC),
                  function: () {
                    _launchUrl(
                        "https://wa.me/905422207170/?text=Hi%2C%20Resul.%20I%20am%20interested%20in%20one%20of%20your%20services.");
                  },
                ),
                const SizedBox(height: kDefaultPadding),
                SocialCard(
                  userName: "resulcayop@gmail.com",
                  iconPath: "assets/images/gmail.png",
                  color: const Color(0xFFE4FFC7),
                  function: () {
                    launchMailto();
                  },
                ),
                const SizedBox(height: kDefaultPadding),
                SocialCard(
                  userName: "Resul Çay                          ",
                  iconPath: "assets/images/linkedin.png",
                  color: const Color(0xFFE8F0F9),
                  function: () {
                    _launchUrl(
                        "https://www.linkedin.com/in/resul-%C3%A7-6b14731a3/");
                  },
                ),
                const SizedBox(height: kDefaultPadding * 2),
                const ContactForm()
              ],
            ),
          );
        }
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
                    userName: "+90 542 220 71 70",
                    iconPath: "assets/images/whatsapp.png",
                    color: const Color(0xFFD9FFFC),
                    function: () {
                      _launchUrl(
                          "https://wa.me/905422207170/?text=Hi%2C%20Resul.%20I%20am%20interested%20in%20one%20of%20your%20services.");
                    },
                  ),
                  SocialCard(
                    userName: "resulcayop@gmail.com",
                    iconPath: "assets/images/gmail.png",
                    color: const Color(0xFFE4FFC7),
                    function: () {
                      launchMailto();
                    },
                  ),
                  SocialCard(
                    userName: "       Resul Çay       ",
                    iconPath: "assets/images/linkedin.png",
                    color: const Color(0xFFE8F0F9),
                    function: () {
                      _launchUrl(
                          "https://www.linkedin.com/in/resul-%C3%A7-6b14731a3/");
                    },
                  ),
                ],
              ),
              const SizedBox(height: kDefaultPadding * 2),
              const ContactForm()
            ],
          ),
        );
      },
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
              controller: clientNameTextController,
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
              controller: clientMailTextController,
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
              controller: projectTypeTextController,
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
              controller: projectBudgetTextController,
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: "Project Budget",
                hintText: "Enter Your Project Budget",
              ),
            ),
          ),
          TextField(
            controller: clientDescriptionTextController,
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
                function: () {
                  context.read<ContactFormModel>().sendMail(
                      clientNameTextController.text,
                      clientMailTextController.text,
                      clientDescriptionTextController.text,
                      projectTypeTextController.text,
                      projectBudgetTextController.text,
                      context);

                  clientDescriptionTextController.text = "";
                  clientMailTextController.text = "";
                  clientNameTextController.text = "";
                  projectBudgetTextController.text = "";
                  projectTypeTextController.text = "";
                },
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

Future<void> _launchUrl(String url) async {
  final Uri uri = Uri.parse(url);

  if (!await launchUrl(uri)) {
    throw 'Could not launch $uri';
  }
}

launchMailto() async {
  final mailtoLink = Mailto(
    to: ['resulcayop@gmail.com'],
    subject: 'Development Service Request',
    body: 'Hi Resul, I am interested in one of your services.',
  );

  await _launchUrl('$mailtoLink');
}
