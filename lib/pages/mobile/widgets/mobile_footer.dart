import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_will/colors.dart';
import 'package:my_will/images.dart';
import 'package:my_will/pages/mobile/widgets/reusable_components/translucent_information_header.dart';

import 'reusable_components/information_header.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      color: royalBlue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
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
                  const SizedBox(width: 20),
                  SizedBox(
                    height: 51,
                    width: 66,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        elevation: const MaterialStatePropertyAll(0),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                        ),
                      ),
                      child: SvgPicture.asset(key),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const InformationHeader(header: 'ЛИЧНЫЙ КАБИНЕТ', fontSize: 12),
              const SizedBox(height: 12),
              const InformationHeader(header: 'РЕГИСТРАЦИЯ', fontSize: 12),
              const SizedBox(height: 12),
              const InformationHeader(header: 'О ПРОЕКТЕ', fontSize: 12),
              const SizedBox(height: 20),
              const InformationHeader(header: 'КОНТАКТЫ', fontSize: 12),
              const SizedBox(height: 10),
              const InformationHeader(
                  header: '+7 (909) 683-87-06', fontSize: 19),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TranslucentInformationHeader(
                  header: 'СКАЧАТЬ ПРИЛОЖЕНИЕ', fontSize: 10),
              const SizedBox(height: 12),
              Row(
                children: [
                  SvgPicture.asset(app_store),
                  const SizedBox(width: 6),
                  SvgPicture.asset(google_play),
                ],
              ),
              const SizedBox(height: 20),
              const InformationHeader(
                  header: 'ПОСМОТРЕТЬ ЗАВЕЩАНИЕ', fontSize: 12),
              const SizedBox(height: 12),
              const InformationHeader(
                  header: 'ПОЛУЧИТЬ ЗАВЕЩАНИЕ', fontSize: 12),
              const SizedBox(height: 20),
              const TranslucentInformationHeader(
                  header: 'МОЯ ВОЛЯ © 2022', fontSize: 10),
              const SizedBox(height: 12),
              const TranslucentInformationHeader(
                  header: 'ПОЛИТИКА КОНФИДЕНЦИАЛЬНОСТИ', fontSize: 10),
            ],
          ),
        ],
      ),
    );
  }
}
