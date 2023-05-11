import 'package:flutter/material.dart';

class Adaptive extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;

  const Adaptive({
    Key? key,
    required this.mobile,
    required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 1080;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1000;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width >= 1080) {
      return desktop;
    } else {
      return mobile;
    }
  }
}