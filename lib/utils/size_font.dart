import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllSize {
  // regular = normal, small < regular < big
  static double fontExtraSmall = 8.0.sp;
  static double fontSmall = 12.0.sp;
  static double fontSemiSmall = 16.0.sp;
  static double font18 = 18.0.sp;
  static double fontRegular = 20.0.sp;
  static double fontSemiRegular = 24.0.sp;
  static double fontBig = 28.0.sp;
  static double fontSemiBig = 32.0.sp;
  static double fontExtraBig = 36.0.sp;
  static double fontTitle = 40.0.sp;

  static GlobalKey globalKey = GlobalKey();

  final Size size;

  AllSize(BuildContext context) : size = MediaQuery.of(context).size;
}
