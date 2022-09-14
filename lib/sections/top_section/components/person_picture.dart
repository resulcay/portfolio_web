import 'package:flutter/material.dart';

class PersonPicture extends StatelessWidget {
  const PersonPicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          constraints: const BoxConstraints(
            maxHeight: 700,
            maxWidth: 700,
          ),
          child: Image.asset("assets/images/person.png"),
        ),
      ],
    );
  }
}
