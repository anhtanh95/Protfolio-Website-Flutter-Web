import 'package:flutter/material.dart';
import 'package:web_app/components/default_button.dart';
import 'package:web_app/components/my_outline_button.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/responsive.dart';
import 'package:web_app/string.dart';

import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Responsive(
        desktop: _desktopWidget(context, screenWidth, 1110),
        tablet: _tabletWidget(context, screenWidth, 810),
        mobile: _mobileWidget(context, screenWidth, 610),
      ),
    );
  }

  Widget _desktopWidget(BuildContext context, screenWidth, panelWidth) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: panelWidth),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                AboutTextWithSign(),
                Expanded(
                    child: AboutSectionText(
                  text: ABOUT_SECTION_DES,
                )),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ExperienceCard(numOfExp: ABOUT_SECTION_EXP),
                Expanded(
                    child: AboutSectionText(
                  text: ABOUT_SECTION_EXP_DES,
                )),
              ],
            ),
          )

          /*SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                imageSrc: "assets/images/hand.png",
                text: "Hire Me!",
                press: () {},
              ),
              SizedBox(width: kDefaultPadding * 1.5),
              DefaultButton(
                imageSrc: "assets/images/download.png",
                text: "Download CV",
                press: () {},
              ),
            ],
          ),*/
        ],
      ),
    );
  }

  Widget _tabletWidget(BuildContext context, screenWidth, panelWidth) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: panelWidth),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Expanded(child: AboutTextWithSign(), flex: 2),
              Expanded(
                  child: AboutSectionText(
                    text: ABOUT_SECTION_DES,
                  ),
                  flex: 5),
            ],
          ),
          // ============================
          SizedBox(height: kDefaultPadding),
          // ============================
          Row(
            children: [
              Expanded(child: ExperienceCard(numOfExp: ABOUT_SECTION_EXP), flex: 2),
              Expanded(
                  child: AboutSectionText(
                    text: ABOUT_SECTION_EXP_DES,
                  ),
                  flex: 5),
            ],
          ),
        ],
      ),
    );
  }

  Widget _mobileWidget(BuildContext context, screenWidth, panelWidth) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      //margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: panelWidth),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(ABOUT_SECTION_TITLE2,
              style: Theme.of(context)
                  .textTheme
                  .headline3
                  ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          SizedBox(height: 5),
          AboutSectionText(
            text: ABOUT_SECTION_DES,
          ),
          // ============================
          SizedBox(height: kDefaultPadding * 2),
          // ============================
          Center(child: ExperienceCard(numOfExp: ABOUT_SECTION_EXP)),
          SizedBox(height: kDefaultPadding),
          AboutSectionText(
            text: ABOUT_SECTION_EXP_DES,
          )
        ],
      ),
    );
  }
}
