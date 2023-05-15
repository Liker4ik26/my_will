import 'package:flutter/material.dart';

import '../../../../colors.dart';

class TranslucentInformationHeader extends StatelessWidget {
  final String header;
  final double fontSize;

  const TranslucentInformationHeader(
      {Key? key, required this.header, required this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      header,
      style: TextStyle(
          fontFamily: 'Onest',
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: white),
    );
  }
}