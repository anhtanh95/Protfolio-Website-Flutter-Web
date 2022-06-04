import 'package:flutter/material.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/models/Service.dart';

import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            color: Color(0xFFFF0000),
            title: "My Major SKills",
            subTitle: "My Skills",
          ),
          SizedBox(
            width: 1110,
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              //spacing: (1110 - (256 * 4)) / 3,
              children: List.generate(
                  services.length, (index) => ServiceCard(index: index)),
            ),
          ),
          /*Wrap(spacing: 20,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                services.length, (index) => ServiceCard(index: index)),
          )*/
        ],
      ),
    );
  }
}
