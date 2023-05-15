import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../colors.dart';

class NavigationItemSmallMobile extends StatelessWidget {
  final String title;
  final String image;

  const NavigationItemSmallMobile(
      {Key? key, required this.title, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(image),
          const SizedBox(height: 4),
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
