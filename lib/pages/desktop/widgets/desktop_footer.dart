import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_will/colors.dart';
import 'package:my_will/images.dart';

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(46, 32, 112, 30),
      color: royalBlue,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset(logo),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(logoName),
                        const SizedBox(height: 6),
                        SvgPicture.asset(subtitle)
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'МОЯ ВОЛЯ © 2022',
                    style: TextStyle(
                        fontFamily: 'Onest',
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: white),
                  ),
                  SizedBox(height: 6),
                  Text(
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
            ],
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(100, 0, 0, 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'ЛИЧНЫЙ КАБИНЕТ',
                        style: TextStyle(
                            fontFamily: 'Onest',
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'РЕГИСТРАЦИЯ',
                        style: TextStyle(
                            fontFamily: 'Onest',
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'ПОСМОТРЕТЬ ЗАВЕЩАНИЕ',
                        style: TextStyle(
                            fontFamily: 'Onest',
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'ПОЛУЧИТЬ ЗАВЕЩАНИЕ',
                        style: TextStyle(
                            fontFamily: 'Onest',
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'О ПРОЕКТЕ',
                        style: TextStyle(
                            fontFamily: 'Onest',
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'КОНТАКТЫ',
                        style: TextStyle(
                            fontFamily: 'Onest',
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          SvgPicture.asset(app_store),
                          const SizedBox(height: 10),
                          const Text(
                            'СКАЧАТЬ ПРИЛОЖЕНИЕ',
                            style: TextStyle(
                                fontFamily: 'Onest',
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.3,
                                color: white),
                          )
                        ],
                      ),
                      const SizedBox(width: 10),
                      SvgPicture.asset(google_play)
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 36,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            elevation: const MaterialStatePropertyAll(0),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              const Text(
                                'Личный  кабинет',
                                style: TextStyle(
                                  color: malibu,
                                  fontFamily: 'Onest',
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.3,
                                ),
                              ),
                              const SizedBox(width: 14),
                              SvgPicture.asset(key)
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        '+7 (909) 683-87-06',
                        style: TextStyle(
                            fontFamily: 'Onest',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.3,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}