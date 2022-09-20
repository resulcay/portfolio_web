import 'package:flutter/material.dart';
import 'package:portfolio_web/home_screen.dart';

import '../../../constants.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;
  int hoverIndex = 0;
  List<String> menuItems = [
    "Home",
    "About",
    "Services",
    "Portfolio",
    "Testimonial",
    "Contacts"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      constraints: const BoxConstraints(maxWidth: 1110),
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          boxShadow: [kDefaultShadow]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          menuItems.length,
          (index) => bottomBarTextItems(index),
        ),
      ),
    );
  }

  Widget bottomBarTextItems(int index) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
        switch (selectedIndex) {
          case 0:
            scrollToIndex(selectedIndex, scrollController, 0);
            break;
          case 1:
            scrollToIndex(selectedIndex, scrollController, 550);
            break;
          case 2:
            scrollToIndex(selectedIndex, scrollController, 630);
            break;
          case 3:
            scrollToIndex(selectedIndex, scrollController, 750);
            break;
          case 4:
            scrollToIndex(selectedIndex, scrollController, 750);
            break;
          case 5:
            scrollToIndex(selectedIndex, scrollController, 778);
            break;
          default:
        }
      },
      onHover: (value) {
        setState(() {
          value ? hoverIndex = index : hoverIndex = selectedIndex;
        });
      },
      child: Container(
        constraints: const BoxConstraints(minWidth: 112),
        height: 100,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Text(
              menuItems[index],
              style: const TextStyle(
                fontSize: 20,
                color: kTextColor,
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 50),
              left: 0,
              right: 0,
              bottom: selectedIndex != index && hoverIndex == index ? -20 : -32,
              child: Image.asset("assets/images/Hover.png"),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              left: 0,
              right: 0,
              bottom: selectedIndex == index ? -2 : -32,
              child: Image.asset("assets/images/Hover.png"),
            )
          ],
        ),
      ),
    );
  }
}
