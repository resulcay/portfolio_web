import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/recent_work_model.dart';

class RecentWorkCard extends StatefulWidget {
  const RecentWorkCard({
    Key? key,
    required this.index,
    required this.function,
  }) : super(key: key);

  final int index;
  final void Function() function;

  @override
  State<RecentWorkCard> createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.function,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 320,
        width: 540,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              if (isHover) kDefaultCardShadow,
            ]),
        child: Row(
          children: [
            Image.asset(recentWorks[widget.index].image),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(recentWorks[widget.index].category.toUpperCase()),
                  const SizedBox(height: kDefaultPadding / 2),
                  Text(
                    recentWorks[widget.index].title,
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(height: 1.5),
                  ),
                  const SizedBox(height: kDefaultPadding),
                  const Text(
                    "View details",
                    style: TextStyle(decoration: TextDecoration.underline),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
