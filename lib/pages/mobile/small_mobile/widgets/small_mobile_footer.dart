import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_will/colors.dart';
import 'package:my_will/images.dart';
import 'package:my_will/pages/mobile/widgets/reusable_components/information_header.dart';

class SmallMobileFooter extends StatelessWidget {
  const SmallMobileFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(26, 35, 16, 22),
      color: royalBlue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(logo),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(logoName),
                  const SizedBox(height: 6),
                  SvgPicture.asset(subtitle)
                ],
              ),
              const SizedBox(width: 20),
              SizedBox(
                height: 40,
                width: 44,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    elevation: const MaterialStatePropertyAll(0),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                  ),
                  child: SvgPicture.asset(key),
                ),
              )
            ],
          ),
          const SizedBox(height: 30),
          const InformationHeader(header: 'ЛИЧНЫЙ КАБИНЕТ', fontSize: 12),
          const SizedBox(height: 12),
          const InformationHeader(header: 'РЕГИСТРАЦИЯ', fontSize: 12),
          const SizedBox(height: 12),
          const InformationHeader(header: 'ПОСМОТРЕТЬ ЗАВЕЩАНИЕ', fontSize: 12),
          const SizedBox(height: 12),
          const InformationHeader(header: 'ПОЛУЧИТЬ ЗАВЕЩАНИЕ', fontSize: 12),
          const SizedBox(height: 12),
          const InformationHeader(header: 'О ПРОЕКТЕ', fontSize: 12),
          const SizedBox(height: 12),
          const InformationHeader(header: 'КОНТАКТЫ', fontSize: 12),
          const SizedBox(height: 20),
          const InformationHeader(header: '+7 (909) 683-87-06', fontSize: 19),
          const SizedBox(height: 18),
          const Text(
            'СКАЧАТЬ ПРИЛОЖЕНИЕ',
            style: TextStyle(
                fontFamily: 'Onest',
                fontSize: 10,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.3,
                color: white),
          ),
          const SizedBox(height: 9),
          Row(
            children: [
              SvgPicture.asset(app_store),
              const SizedBox(width: 4),
              SvgPicture.asset(google_play),
            ],
          ),
          const SizedBox(height: 28),
          const Text(
            'МОЯ ВОЛЯ © 2022',
            style: TextStyle(
                fontFamily: 'Onest',
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: white),
          ),
          const SizedBox(height: 6),
          const Text(
            'ПОЛИТИКА КОНФИДЕНЦИАЛЬНОСТИ',
            style: TextStyle(
                fontFamily: 'Onest',
                fontSize: 10,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.3,
                color: white),
          ),
        ],
      ),
    );
  }
}
