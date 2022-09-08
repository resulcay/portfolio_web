import 'package:flutter/material.dart';

import '../constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.color,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: 100,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 72),
            margin: const EdgeInsets.only(right: kDefaultPadding),
            height: 100,
            width: 8,
            color: Colors.black,
            child: DecoratedBox(decoration: BoxDecoration(color: color)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: kTextColor,
                  fontWeight: FontWeight.w200,
                ),
              ),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.headline2!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
              )
            ],
          )
        ],
      ),
    );
  }
}
