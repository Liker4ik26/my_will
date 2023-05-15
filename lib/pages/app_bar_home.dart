import 'package:adaptive_layout/adaptive_layout.dart';
import 'package:flutter/material.dart';
import 'package:my_will/pages/desktop/widgets/desktop_app_bar.dart';
import 'package:my_will/pages/mobile/widgets/mobile_app_bar.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      smallLayout: const MobileAppBar(),
      mediumLayout: const MobileAppBar(),
      largeLayout: const DesktopAppBar(),
    );
  }
}