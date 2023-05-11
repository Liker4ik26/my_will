import 'package:flutter/cupertino.dart';
import 'package:my_will/adaptive.dart';
import 'package:my_will/pages/desktop/widgets/desktop_app_bar.dart';
import 'package:my_will/pages/mobile/widgets/mobile_app_bar.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Adaptive.isMobile(context)) {
      return const MobileAppBar();
    } else if (Adaptive.isMobile(context)) {
      return const DesktopAppBar();
    } else {
      return const DesktopAppBar();
    }
  }
}