import 'package:flutter/material.dart';

class PersonPicture extends StatelessWidget {
  const PersonPicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/person.png");
  }
}
