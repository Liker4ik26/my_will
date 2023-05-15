import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../colors.dart';

class NavigationItemMobile extends StatelessWidget {
  final String title;
  final String image;

  const NavigationItemMobile(
      {Key? key, required this.title, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(image),
          const SizedBox(height: 7),
          Text(
            title,
            style: const TextStyle(
                fontFamily: 'Onest',
                fontSize: 8,
                fontWeight: FontWeight.normal,
                letterSpacing: 0.3,
                color: cornflowerBlue),
          )
        ],
      ),
    );
  }
}
