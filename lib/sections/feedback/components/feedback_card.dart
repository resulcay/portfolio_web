import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/feedback_model.dart';

class FeedbackCard extends StatefulWidget {
  const FeedbackCard({
    Key? key,
    required this.index,
    required this.function,
  }) : super(key: key);
  final int index;
  final void Function() function;

  @override
  State<FeedbackCard> createState() => _FeedbackCardState();
}

class _FeedbackCardState extends State<FeedbackCard> {
  Duration duration = const Duration(milliseconds: 200);
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 1110) {
          return InkWell(
            onTap: widget.function,
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              margin: const EdgeInsets.only(top: kDefaultPadding * 3),
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                color: feedBacks[widget.index].color,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Transform.translate(
                    offset: const Offset(0, -55),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 10,
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                            feedBacks[widget.index].userPic,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    feedBacks[widget.index].review,
                    style: const TextStyle(
                      fontSize: 18,
                      color: kTextColor,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: kDefaultPadding * 2),
                  Text(
                    feedBacks[widget.index].name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
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
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: AnimatedContainer(
            duration: duration,
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            margin: const EdgeInsets.only(top: kDefaultPadding * 3),
            height: 350,
            width: 350,
            decoration: BoxDecoration(
              color: feedBacks[widget.index].color,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                if (isHover) kDefaultCardShadow,
              ],
            ),
            child: Column(
              children: [
                Transform.translate(
                  offset: const Offset(0, -55),
                  child: AnimatedContainer(
                    duration: duration,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 10,
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                            feedBacks[widget.index].userPic,
                          ),
                        ),
                        boxShadow: [
                          if (!isHover) kDefaultCardShadow,
                        ]),
                  ),
                ),
                Text(
                  feedBacks[widget.index].review,
                  style: const TextStyle(
                    fontSize: 18,
                    color: kTextColor,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: kDefaultPadding * 2),
                Text(
                  feedBacks[widget.index].name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
