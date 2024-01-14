import 'package:flutter/material.dart';
import 'package:nutricycle_mobileapps/ui/detailFood/detail_food.dart';
import 'package:nutricycle_mobileapps/ui/introduction_screen/views/introduction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(fontFamily: 'Poppins'),
      home: const DetailFood(),
    );
  }
}
