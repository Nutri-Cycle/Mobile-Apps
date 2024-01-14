import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutricycle_mobileapps/ui/detailFood/detail_food.dart';
import 'package:nutricycle_mobileapps/utils/theme_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(baseWidthDevice, baseHeightDevice),
        builder: (_, child) {
          return MaterialApp(
            theme: ThemeData(fontFamily: 'Poppins'),
            debugShowCheckedModeBanner: false,
            // theme: ThemeData(fontFamily: 'Poppins'),
            home: const DetailFood(),
          );
        });
  }
}
