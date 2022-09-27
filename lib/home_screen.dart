import 'package:flutter/material.dart';
import 'package:portfolio_web/constants.dart';
import 'package:portfolio_web/sections/about/about_section.dart';
import 'package:portfolio_web/sections/contact/contact_section.dart';
import 'package:portfolio_web/sections/feedback/feedback_section.dart';
import 'package:portfolio_web/sections/recent_work/recent_work_section.dart';
import 'package:portfolio_web/sections/service/service_section.dart';
import 'package:portfolio_web/sections/top_section/top_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> listItems = [];

  @override
  Widget build(BuildContext context) {
    final List<String> drawerItems = [
      "Home",
      "About",
      "Services",
      "Portfolio",
      "Testimonial",
      "Contacts"
    ];
    return Scaffold(
      body: ListView(
        controller: scrollController,
        children: [
          Column(
            children: const [
              TopSection(),
              SizedBox(height: kDefaultPadding * 2),
              AboutSection(),
              ServiceSection(),
              RecentWorkSection(),
              FeedbackSection(),
              SizedBox(height: kDefaultPadding),
              ContactSection(),
              SizedBox(height: 500),
            ],
          )
        ],
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: const Color.fromARGB(255, 100, 52, 60),
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: Image.asset("assets/images/person.png"),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Resul Çay",
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  const SizedBox(height: 2),
                  const Text("Software Developer"),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(drawerItems.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        scrollToIndex(index, scrollController, 500);
                      },
                      child: SizedBox(
                        height: 40,
                        width: 90,
                        child: Text(drawerItems[index]),
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final scrollController = ScrollController();

void scrollToIndex(
    int index, ScrollController scrollController, double height) {
  scrollController.animateTo(height * index,
      duration: const Duration(seconds: 1), curve: Curves.easeIn);
}
