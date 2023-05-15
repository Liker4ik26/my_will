import 'package:adaptive_layout/adaptive_layout.dart';
import 'package:flutter/material.dart';
import 'package:my_will/colors.dart';
import 'package:my_will/pages/desktop/widgets/desktop_footer.dart';
import 'package:my_will/pages/mobile/widgets/mobile_footer.dart';
import 'package:my_will/pages/mobile/widgets/mobile_navigation_bar.dart';

import 'app_bar_home.dart';
import 'desktop/widgets/desktop_navigation_bar.dart';
import 'mobile/small_mobile/widgets/small_mobile_footer.dart';
import 'mobile/small_mobile/widgets/small_mobile_navigation_bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: catskillWhite,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: AppBarHome(),
        ),
        body: AdaptiveLayout(
          smallLayout: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [SmallMobileNavigationBar(), SmallMobileFooter()],
          ),
          mediumLayout: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [MobileNavigationBar(), MobileFooter()],
          ),
          largeLayout: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [DesktopNavigationBar(), DesktopFooter()],
          ),
        ));
  }
}