import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../colors.dart';

class NavigationItem extends StatelessWidget {
  final String image;
  final String title;

  const NavigationItem({Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.fromLTRB(18, 16, 0, 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(9),
            ),
            child: Row(
              children: [
                SvgPicture.asset(image),
                const SizedBox(width: 16),
                Text(
                  title,
                  style: const TextStyle(
                      fontFamily: 'Onest',
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 0.3,
                      color: cornflowerBlue),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
