import 'package:flutter/material.dart';
import 'package:my_will/pages/home_page.dart';

void main() {
  runApp(const MyWill());
}

class MyWill extends StatelessWidget {
  const MyWill({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Моя воля',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}