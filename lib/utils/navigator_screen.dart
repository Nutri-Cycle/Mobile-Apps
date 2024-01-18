import 'package:flutter/material.dart';

void navigateToScreen(BuildContext context, String routeName) {
  Navigator.pushNamed(context, routeName);
}

void backToScreen(BuildContext context) {
  Navigator.pop(context);
}
