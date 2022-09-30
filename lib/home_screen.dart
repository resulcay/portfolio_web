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
      drawer: _appDrawer(context),
    );
  }

  Drawer _appDrawer(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final List<IconData> drawerIcons = [
      Icons.local_fire_department_outlined,
      Icons.contact_support_outlined,
      Icons.code_outlined,
      Icons.done_all_outlined,
      Icons.lightbulb_outlined,
      Icons.alternate_email_outlined,
    ];
    final List<String> drawerItems = [
      "Home",
      "About",
      "Services",
      "Portfolio",
      "Testimonial",
      "Contact"
    ];
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _drawerTopSection(context),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(drawerItems.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: InkWell(
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        Navigator.pop(context);
                        switch (index) {
                          case 0:
                            scrollToIndex(index, scrollController, 0);
                            break;
                          case 1:
                            scrollToIndex(index, scrollController, size.height);
                            break;
                          case 2:
                            scrollToIndex(index, scrollController, size.height);
                            break;
                          case 3:
                            scrollToIndex(
                                index, scrollController, size.height * 1.3);
                            break;
                          case 4:
                            scrollToIndex(
                                index, scrollController, size.height * 1.5);
                            break;
                          case 5:
                            scrollToIndex(
                                index, scrollController, size.height * 1.5);
                            break;
                          default:
                        }
                      },
                      child: Container(
                        height: 50,
                        width: 270,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xFFF4EEF9),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            Icon(drawerIcons[index]),
                            const SizedBox(width: 30),
                            Text(
                              drawerItems[index],
                              style: const TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(height: kDefaultPadding * 2)
            ],
          ),
        ),
      ),
    );
  }

  Column _drawerTopSection(BuildContext context) {
    return Column(
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
        const SizedBox(height: kDefaultPadding * 1.5),
        const Divider(endIndent: 20)
      ],
    );
  }
}

final scrollController = ScrollController();

void scrollToIndex(
    int index, ScrollController scrollController, double height) {
  scrollController.animateTo(height * index,
      duration: const Duration(seconds: 1), curve: Curves.easeIn);
}
