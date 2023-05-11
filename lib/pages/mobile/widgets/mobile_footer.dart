import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_will/colors.dart';
import 'package:my_will/images.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(36, 35, 33, 22),
      color: royalBlue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(logo),
              const SizedBox(width: 18),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(logoName),
                  const SizedBox(height: 6),
                  SvgPicture.asset(subtitle)
                ],
              ),
              const SizedBox(width: 60),
              SizedBox(
                height: 51,
                width: 66,
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
          const SizedBox(height: 36),
          const Text(
            'ЛИЧНЫЙ КАБИНЕТ',
            style: TextStyle(
                fontFamily: 'Onest',
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          const SizedBox(height: 15),
          const Text(
            'РЕГИСТРАЦИЯ',
            style: TextStyle(
                fontFamily: 'Onest',
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          const SizedBox(height: 15),
          const Text(
            'ПОСМОТРЕТЬ ЗАВЕЩАНИЕ',
            style: TextStyle(
                fontFamily: 'Onest',
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          const SizedBox(height: 15),
          const Text(
            'ПОЛУЧИТЬ ЗАВЕЩАНИЕ',
            style: TextStyle(
                fontFamily: 'Onest',
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          const SizedBox(height: 15),
          const Text(
            'О ПРОЕКТЕ',
            style: TextStyle(
                fontFamily: 'Onest',
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          const SizedBox(height: 15),
          const Text(
            'КОНТАКТЫ',
            style: TextStyle(
                fontFamily: 'Onest',
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          const SizedBox(height: 22),
          const Text(
            '+7 (909) 683-87-06',
            style: TextStyle(
                fontFamily: 'Onest',
                fontSize: 19,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.3,
                color: Colors.white),
          ),
          const SizedBox(height: 20),
          const Text(
            'СКАЧАТЬ ПРИЛОЖЕНИЕ',
            style: TextStyle(
                fontFamily: 'Onest',
                fontSize: 10,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.3,
                color: white),
          ),
          const SizedBox(height: 11),
          Row(
            children: [
              SvgPicture.asset(app_store),
              const SizedBox(width: 11),
              SvgPicture.asset(google_play),
            ],
          ),
          const SizedBox(height: 30),
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