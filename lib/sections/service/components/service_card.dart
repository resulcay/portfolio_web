import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/service_model.dart';

class ServiceCard extends StatefulWidget {
  const ServiceCard({
    Key? key,
    required this.index,
    required this.function,
  }) : super(key: key);

  final int index;
  final void Function() function;

  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool isHover = false;
  Duration duration = const Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 1110) {
        return InkWell(
          onTap: widget.function,
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
            height: 256,
            width: 256,
            decoration: BoxDecoration(
              color: services[widget.index].color,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(kDefaultPadding * 1.5),
                  height: 120,
                  width: 120,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    services[widget.index].image,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(height: kDefaultPadding),
                Text(
                  context.locale == const Locale("en")
                      ? services[widget.index].title
                      : servicesTr[widget.index].title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
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
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: AnimatedContainer(
          duration: duration,
          margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
          height: 256,
          width: 256,
          decoration: BoxDecoration(
            color: services[widget.index].color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: duration,
                padding: const EdgeInsets.all(kDefaultPadding * 1.5),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    if (!isHover)
                      BoxShadow(
                        offset: const Offset(0, 20),
                        blurRadius: 30,
                        color: Colors.black.withOpacity(0.1),
                      )
                  ],
                ),
                child: Image.asset(
                  services[widget.index].image,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: kDefaultPadding),
              Text(
                context.locale == const Locale("en")
                    ? services[widget.index].title
                    : servicesTr[widget.index].title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
