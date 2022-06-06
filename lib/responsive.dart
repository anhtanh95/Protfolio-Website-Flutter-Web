import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget desktop;
  final Widget? tablet;
  final Widget? mobile;
  final Widget? miniMobile;

  static const int MIN_WIDTH_DESKTOP = 900; // 1100
  static const int MIN_WIDTH_TABLET = 600; // 650
  static const int MIN_WIDTH_MOBILE = 300;

  const Responsive({
    Key? key,
    required this.desktop,
    this.tablet,
    this.mobile,
    this.miniMobile,
  }) : super(key: key);

  // This isMobile, isTablet, isDesktop help us later
  static bool isMiniMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < MIN_WIDTH_MOBILE;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < MIN_WIDTH_TABLET &&
          MediaQuery.of(context).size.width >= MIN_WIDTH_MOBILE;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < MIN_WIDTH_DESKTOP &&
          MediaQuery.of(context).size.width >= MIN_WIDTH_TABLET;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= MIN_WIDTH_DESKTOP;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // If our width is more than 1100 then we consider it a desktop
      builder: (context, constraints) {
        if (constraints.maxWidth >= MIN_WIDTH_DESKTOP) {
          return desktop;
        }
        // If width it less then 1100 and more then 650 we consider it as tablet
        else if (constraints.maxWidth >= MIN_WIDTH_TABLET) {
          return tablet ?? desktop;
        }
        // Or less then that we called it mobile
        else if (constraints.maxWidth >= MIN_WIDTH_MOBILE) {
          return mobile ?? tablet ?? desktop;
        }
        else {
          return miniMobile ?? mobile ?? tablet ?? desktop;
        }
      },
    );
  }
}