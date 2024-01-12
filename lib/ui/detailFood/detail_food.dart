import 'package:flutter/material.dart';
import 'package:nutricycle_mobileapps/utils/theme_color.dart';

class DetailFood extends StatelessWidget {
  const DetailFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        onPressed: () {},
        child: Text("Hello"),
        style: ElevatedButton.styleFrom(primary: btnColor),
      ),
    );
  }
}
