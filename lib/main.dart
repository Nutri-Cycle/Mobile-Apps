import 'package:flutter/material.dart';
import 'package:nutricycle_mobileapps/utils/theme_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ElevatedButton(
          onPressed: () {},
          child: Text("Hello"),
          style: ElevatedButton.styleFrom(primary: Color(btnColor)),
        ),
      ),
    );
  }
}
