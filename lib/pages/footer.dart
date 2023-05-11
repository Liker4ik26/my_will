import 'package:flutter/material.dart';
import 'package:my_will/pages/desktop/widgets/desktop_footer.dart';
import 'package:my_will/pages/mobile/widgets/mobile_footer.dart';

import '../adaptive.dart';

class FooterHome extends StatelessWidget {
  const FooterHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Adaptive.isMobile(context)) {
      return const MobileFooter();
    } else if (Adaptive.isMobile(context)) {
      return const DesktopFooter();
    } else {
      return const DesktopFooter();
    }
  }
}