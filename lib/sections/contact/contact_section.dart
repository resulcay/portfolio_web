import 'package:easy_localization/easy_localization.dart';
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
        children: [
          const SizedBox(height: kDefaultPadding * 2.5),
          SectionTitle(
            title: context.locale == const Locale("en")
                ? "For Project inquiry and Information"
                : "Proje sorgulama ve Bilgilendirme",
            subTitle: context.locale == const Locale("en")
                ? "Contact Me"
                : "Benimle İletişime Geç",
            color: const Color(0xFF07E24A),
          ),
          const ContactBox()
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
                      context.locale == const Locale("en")
                          ? "https://wa.me/905422207170/?text=Hi%2C%20Resul.%20I%20am%20interested%20in%20one%20of%20your%20services."
                          : "https://wa.me/905422207170/?text=Merhaba%20Resul%2C%20Hizmetlerinizden%20faydalanmak%20istiyorum.",
                    );
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
                    _launchUrl("https://www.linkedin.com/in/resulcay/");
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
                        context.locale == const Locale("en")
                            ? "https://wa.me/905422207170/?text=Hi%2C%20Resul.%20I%20am%20interested%20in%20one%20of%20your%20services."
                            : "https://wa.me/905422207170/?text=Merhaba%20Resul%2C%20Hizmetlerinizden%20faydalanmak%20istiyorum.",
                      );
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
                          "https://www.linkedin.com/in/resulcay/");
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
              decoration: InputDecoration(
                labelText: context.locale == const Locale("en")
                    ? "Your Name"
                    : "Adınız",
                hintText: context.locale == const Locale("en")
                    ? "Enter Your Name"
                    : "Adınızı Giriniz",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextField(
              controller: clientMailTextController,
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: context.locale == const Locale("en")
                    ? "Your Email"
                    : "Mailiniz",
                hintText: context.locale == const Locale("en")
                    ? "Enter Your Email Address"
                    : "Mailinizi Giriniz",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextField(
              controller: projectTypeTextController,
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: context.locale == const Locale("en")
                    ? "Project Type"
                    : "Proje Türü",
                hintText: context.locale == const Locale("en")
                    ? "Enter Your Project Type"
                    : "Proje Türünüzü Giriniz",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextField(
              controller: projectBudgetTextController,
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: context.locale == const Locale("en")
                    ? "Project Budget"
                    : "Proje Bütçesi",
                hintText: context.locale == const Locale("en")
                    ? "Enter Your Project Budget"
                    : "Proje Bütçenizi Giriniz",
              ),
            ),
          ),
          TextField(
            controller: clientDescriptionTextController,
            maxLines: 7,
            onChanged: (value) {},
            decoration: InputDecoration(
              labelText: context.locale == const Locale("en")
                  ? "Your Description"
                  : "Mesajınız",
              hintText: context.locale == const Locale("en")
                  ? "Enter Your Description"
                  : "Mesajınızı Giriniz",
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
                buttonText: context.locale == const Locale("en")
                    ? "Contact Me"
                    : "Benimle İletişime Geç",
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
    subject: "Development Service Request".tr(),
    body: "Hi Resul, I am interested in one of your services.".tr(),
  );

  await _launchUrl('$mailtoLink');
}
