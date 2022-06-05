import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';

import 'components/glass_content.dart';
import 'components/logo_blur_box.dart';
import 'components/menu.dart';
import 'components/person_pic.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      //constraints: BoxConstraints(maxHeight: 700, minHeight: 700),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/background.jpg"),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding),
        width: 1200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: GlassContent(size: size),
            ),
            SizedBox(height: kDefaultPadding),
            PersonPic(),
            //Align(alignment: Alignment.bottomCenter, child: GlassContent(size: size)),
            //Align(alignment: Alignment.bottomCenter, child: PersonPic()),
            /*Positioned(
              bottom: 0,
              right: 0,
              child: Align(alignment: Alignment.center, child: PersonPic()),
            ),
            Positioned(
              bottom: 0,
              child: Menu(),
            ),*/
          ],
        ),
      ),
    );
  }
}
