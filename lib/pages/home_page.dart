import 'package:flutter/material.dart';
import 'package:my_will/pages/app_bar.dart';
import 'package:my_will/pages/footer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [AppBarHome(), FooterHome()],
      ),
    );
  }
}