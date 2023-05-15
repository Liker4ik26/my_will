import 'package:flutter/material.dart';

class InformationHeader extends StatelessWidget {
  final String header;
  final double fontSize;

  const InformationHeader(
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
          color: Colors.white),
    );
  }
}
