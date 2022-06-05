import 'package:flutter/material.dart';
import 'package:web_app/string.dart';

import '../../../constants.dart';

class AboutTextWithSign extends StatelessWidget {
  const AboutTextWithSign({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ABOUT_SECTION_TITLE,
          style: Theme.of(context)
              .textTheme
              .headline3
              ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(height: kDefaultPadding * 2),
        //Image.asset("assets/images/sign.png")
      ],
    );
  }
}
