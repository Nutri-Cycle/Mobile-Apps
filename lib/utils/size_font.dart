import 'package:flutter/widgets.dart';

class AllSize {
  // regular = normal, small < regular < big
  static const double fontExtraSmall = 8.0;
  static const double fontSmall = 12.0;
  static const double fontSemiSmall = 16.0;
  static const double fontRegular = 20.0;
  static const double fontSemiRegular = 24.0;
  static const double fontBig = 28.0;
  static const double fontSemiBig = 32.0;
  static const double fontExtraBig = 36.0;
  static const double fontTitle = 40.0;

  final Size size;

  AllSize(BuildContext context) : size = MediaQuery.of(context).size;
}
