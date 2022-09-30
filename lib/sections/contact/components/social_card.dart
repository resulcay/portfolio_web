import 'package:flutter/material.dart';

import '../../../constants.dart';

class SocialCard extends StatefulWidget {
  const SocialCard(
      {Key? key,
      required this.userName,
      required this.iconPath,
      required this.color,
      required this.function})
      : super(key: key);
  final String userName;
  final String iconPath;
  final Color color;
  final void Function() function;

  @override
  State<SocialCard> createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 1110) {
          return InkWell(
            onTap: widget.function,
            child: FittedBox(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding * 1.5,
                  vertical: kDefaultPadding / 2,
                ),
                decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      widget.iconPath,
                      height: 80,
                      width: 80,
                    ),
                    const SizedBox(width: kDefaultPadding),
                    Text(widget.userName)
                  ],
                ),
              ),
            ),
          );
        }
        return InkWell(
          onTap: widget.function,
          onHover: (value) {
            setState(() {
              isHover = value;
            });
          },
          child: FittedBox(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 1.5,
                vertical: kDefaultPadding / 2,
              ),
              decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    if (isHover) kDefaultCardShadow,
                  ]),
              child: Row(
                children: [
                  Image.asset(
                    widget.iconPath,
                    height: 80,
                    width: 80,
                  ),
                  const SizedBox(width: kDefaultPadding),
                  Text(widget.userName)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
