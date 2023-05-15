import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_will/pages/mobile/small_mobile/reusable_components/navigation_item_small_mobile.dart';

import '../../../../colors.dart';
import '../../../../images.dart';

class SmallMobileNavigationBar extends StatelessWidget {
  const SmallMobileNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(1, 0, 1, 0),
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
              color: shadowGray.withOpacity(0.02),
              spreadRadius: 5,
              blurRadius: 10),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
            decoration: BoxDecoration(
              color: blueWall,
              borderRadius: BorderRadius.circular(9),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(user_profile),
                const SizedBox(height: 4),
                const Text(
                  'Профиль',
                  style: TextStyle(
                      fontFamily: 'Onest',
                      fontSize: 8,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 0.3,
                      color: cornflowerBlue),
                )
              ],
            ),
          ),
          const SizedBox(width: 1),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(38, 0, 7, 0),
                      child: SvgPicture.asset(budget),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: SvgPicture.asset(content),
                    )
                  ],
                ),
                const SizedBox(height: 4),
                const Text(
                  'Моя воля',
                  style: TextStyle(
                      fontFamily: 'Onest',
                      fontSize: 8,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 0.3,
                      color: cornflowerBlue),
                )
              ],
            ),
          ),
          const SizedBox(width: 1),
          const NavigationItemSmallMobile(title: 'Тарифы', image: ticket),
          const SizedBox(width: 1),
          const NavigationItemSmallMobile(
              title: 'Уведомления', image: notification),
          const SizedBox(width: 1),
          const NavigationItemSmallMobile(title: 'Настройки', image: setting)
        ],
      ),
    );
  }
}
