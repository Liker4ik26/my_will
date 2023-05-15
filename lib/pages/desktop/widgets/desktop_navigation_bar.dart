import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_will/images.dart';
import 'package:my_will/pages/desktop/widgets/reusable_components/navigation_item.dart';

import '../../../colors.dart';

class DesktopNavigationBar extends StatelessWidget {
  const DesktopNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 255,
      margin: const EdgeInsets.fromLTRB(140, 32, 0, 0),
      padding: const EdgeInsets.fromLTRB(7, 24, 8, 25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
              color: shadowGray.withOpacity(0.02),
              spreadRadius: 5,
              blurRadius: 10),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 24, 0, 0),
            child: Row(
              children: [
                Stack(
                  children: [
                    SvgPicture.asset(ellipse),
                    Positioned(
                      bottom: 10,
                      top: 10,
                      left: 10,
                      right: 10,
                      child: SvgPicture.asset(user),
                    ),
                  ],
                ),
                const SizedBox(width: 16),
                const Text(
                  'Мариана В.В.',
                  style: TextStyle(
                      fontFamily: 'Onest',
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.3,
                      color: Colors.black),
                )
              ],
            ),
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(18, 16, 0, 16),
                  decoration: BoxDecoration(
                    color: blueWall,
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(user_profile),
                      const SizedBox(width: 16),
                      const Text(
                        'Профиль',
                        style: TextStyle(
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
          ),
          const SizedBox(height: 2),
          const NavigationItem(image: content, title: 'Моя воля'),
          const SizedBox(height: 2),
          const NavigationItem(image: ticket, title: 'Тарифы и место'),
          const SizedBox(height: 2),
          const NavigationItem(image: notification, title: 'Уведомления'),
          const SizedBox(height: 2),
          const NavigationItem(image: setting, title: 'Настройки'),
        ],
      ),
    );
  }
}
