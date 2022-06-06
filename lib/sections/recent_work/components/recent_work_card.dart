import 'package:flutter/material.dart';
import 'package:web_app/models/RecentWork.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:web_app/responsive.dart';

import '../../../constants.dart';

class RecentWorkCard extends StatefulWidget {
  // just press "Command + ."
  const RecentWorkCard({
    Key? key,
    required this.index,
    required this.press,
  }) : super(key: key);

  final int index;
  final Function() press;

  @override
  _RecentWorkCardState createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        //height: 320,
        width: 540,
        constraints: BoxConstraints(minHeight: 320),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Responsive(
          desktop: _desktopWidget(),
          miniMobile: _miniMobileWidget(),
        )
      ),
    );
  }

  void _openLink(String link) async {
    try {
      await launchUrl(Uri.parse(link));
    } catch (e) {
    }
  }

  Widget _desktopWidget() {
    return Row(
      children: [
        //Image.asset(recentWorks[widget.index].image, width: 180, fit: BoxFit.fill),
        Container(
          width: 180,
          height: 320,
          decoration: BoxDecoration(
            color: Color(0xFFD2E6FC),
            //borderRadius: BorderRadius.vertical(top: Radius.circular(10), bottom: Radius.zero),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 3),
                blurRadius: 6,
                color: Color(0xFF0080FF).withOpacity(0.25),
              ),
            ],
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(recentWorks[widget.index].image),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(recentWorks[widget.index].category.toUpperCase()),
                SizedBox(height: kDefaultPadding / 2),
                Text(
                  recentWorks[widget.index].title,
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(height: 1.5),
                ),
                SizedBox(height: kDefaultPadding),
                Text(recentWorks[widget.index].subTitle),
                SizedBox(height: kDefaultPadding),
                if (recentWorks[widget.index].id == 2)
                  Text("Status: In development")
                else
                  TextButton(
                    onPressed: () {
                      _openLink(recentWorks[widget.index].link);
                    },
                    child: Text(
                      "Store Link",
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _miniMobileWidget() {
    return Column(
      children: [
        SizedBox(height: kDefaultPadding / 2),
        Text(recentWorks[widget.index].category.toUpperCase()),
        //SizedBox(height: kDefaultPadding / 2),
        Text(
          recentWorks[widget.index].title,
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(height: 1.5),
        ),
        SizedBox(height: kDefaultPadding / 2),
        Container(
          width: 180,
          height: 320,
          decoration: BoxDecoration(
            color: Color(0xFFD2E6FC),
            //borderRadius: BorderRadius.vertical(top: Radius.circular(10), bottom: Radius.zero),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 3),
                blurRadius: 6,
                color: Color(0xFF0080FF).withOpacity(0.25),
              ),
            ],
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(recentWorks[widget.index].image),
            ),
          ),
        ),
        SizedBox(height: kDefaultPadding),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(recentWorks[widget.index].subTitle),
        ),
        SizedBox(height: kDefaultPadding / 2),
        if (recentWorks[widget.index].id == 2)
          Text("Status: In development")
        else
          TextButton(
            onPressed: () {
              _openLink(recentWorks[widget.index].link);
            },
            child: Text(
              "Store Link",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          )
        ,
        SizedBox(height: kDefaultPadding / 2),
      ],
    );
  }
}
