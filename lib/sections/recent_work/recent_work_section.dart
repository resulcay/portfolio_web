import 'package:flutter/material.dart';
import 'package:portfolio_web/components/section_title.dart';
import 'package:portfolio_web/constants.dart';

import '../../components/hire_me.dart';

class RecentWorkSection extends StatefulWidget {
  const RecentWorkSection({super.key});

  @override
  State<RecentWorkSection> createState() => _RecentWorkSectionState();
}

class _RecentWorkSectionState extends State<RecentWorkSection>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this)
          ..addListener(() => setState(() {}));
    animation = Tween(begin: 0.0, end: -80.0).animate(controller);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding * 6),
      height: 600,
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
            offset: Offset(0, animation.value),
            child: const HireMeCard(),
          ),
          const SectionTitle(
            title: "My Strong Arenas",
            subTitle: "Recent Works",
            color: Color(0xFFFFB100),
          ),
          Container(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
