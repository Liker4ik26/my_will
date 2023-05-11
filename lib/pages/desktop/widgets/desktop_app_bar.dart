import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_will/colors.dart';

import '../../../images.dart';

class DesktopAppBar extends StatelessWidget {
  const DesktopAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(136, 0, 0, 0),
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [malibu, heliotrope])),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 21),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu, color: Colors.white)),
            const SizedBox(width: 24),
            SvgPicture.asset(logoName),
          ],
        ),
      ),
    );
  }
}