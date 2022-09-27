import 'package:flutter/material.dart';
import 'package:portfolio_web/constants.dart';
import 'package:portfolio_web/sections/about/about_section.dart';
import 'package:portfolio_web/sections/contact/contact_section.dart';
import 'package:portfolio_web/sections/feedback/feedback_section.dart';
import 'package:portfolio_web/sections/recent_work/recent_work_section.dart';
import 'package:portfolio_web/sections/service/service_section.dart';
import 'package:portfolio_web/sections/top_section/components/menu.dart';
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
      drawer: Drawer(
        child: Column(
          children: List.generate(menuItems.length, (index) {
            return Padding(
              padding: const EdgeInsets.all(20),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  scrollToIndex(index, scrollController, 500);
                },
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Text(menuItems[index]),
                ),
              ),
            );
          }),
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
