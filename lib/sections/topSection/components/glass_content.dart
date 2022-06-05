import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:web_app/responsive.dart';

import '../../../constants.dart';
import '../../../string.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding),
          /*constraints:
              BoxConstraints(maxWidth: 1110, maxHeight: 600),
          width: double.infinity,*/
          color: Colors.white.withOpacity(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /*Text(
                "Hello There!",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: Colors.white),
              ),*/
              Text(
                TOP_SECTION_NAME,
                style: TextStyle(
                  fontSize: Responsive.isDesktop(context) ? 80 : Responsive.isTablet(context) ? 60 : 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.0,
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Text(
                TOP_SECTION_DES,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(color: Colors.white, height: 1.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
