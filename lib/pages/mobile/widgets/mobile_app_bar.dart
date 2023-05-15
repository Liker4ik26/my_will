import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../colors.dart';
import '../../../images.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [malibu, heliotrope])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu, color: Colors.white),
              ),
              const SizedBox(width: 24),
              SvgPicture.asset(logoName),
            ],
          ),
          SvgPicture.asset(login),
        ],
      ),
    );
  }
}
