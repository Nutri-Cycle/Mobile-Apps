import 'package:flutter/material.dart';

Widget _buildDividerRow() {
  return Row(
    children: [
      Expanded(
        child: Container(
          height: 1.0,
          color: Colors.black,
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Text(
          'or',
          style: TextStyle(fontSize: 18.0),
        ),
      ),
      Expanded(
        child: Container(
          height: 1.0,
          color: Colors.black,
        ),
      ),
    ],
  );
}
