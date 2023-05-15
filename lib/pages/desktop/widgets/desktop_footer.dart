import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_will/colors.dart';
import 'package:my_will/images.dart';
import 'package:my_will/pages/mobile/widgets/reusable_components/information_header.dart';

import '../../mobile/widgets/reusable_components/translucent_information_header.dart';

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(46, 32, 112, 30),
      color: royalBlue,
      child: Expanded(
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
                    TranslucentInformationHeader(
                        header: 'МОЯ ВОЛЯ © 2022', fontSize: 10),
                    SizedBox(height: 6),
                    TranslucentInformationHeader(
                        header: 'ПОЛИТИКА КОНФИДЕНЦИАЛЬНОСТИ', fontSize: 10),
                  ],
                ),
              ],
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.fromLTRB(100, 0, 0, 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        InformationHeader(
                            header: 'ЛИЧНЫЙ КАБИНЕТ', fontSize: 10),
                        SizedBox(height: 6),
                        InformationHeader(header: 'РЕГИСТРАЦИЯ', fontSize: 10),
                        SizedBox(height: 6),
                        InformationHeader(
                            header: 'ПОСМОТРЕТЬ ЗАВЕЩАНИЕ', fontSize: 10),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        InformationHeader(
                            header: 'ПОЛУЧИТЬ ЗАВЕЩАНИЕ', fontSize: 10),
                        SizedBox(height: 6),
                        InformationHeader(header: 'О ПРОЕКТЕ', fontSize: 10),
                        SizedBox(height: 6),
                        InformationHeader(header: 'КОНТАКТЫ', fontSize: 10),
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
                            const TranslucentInformationHeader(
                                header: 'СКАЧАТЬ ПРИЛОЖЕНИЕ', fontSize: 10),
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
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
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
                        const InformationHeader(
                            header: '+7 (909) 683-87-06', fontSize: 14),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
