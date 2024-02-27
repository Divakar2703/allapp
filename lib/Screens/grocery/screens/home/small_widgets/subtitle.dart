import 'package:flutter/material.dart';

Widget subTitle(String text) {
  return Row(
    children: [
      Text(
        text,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
      Spacer(),
    ],
  );
}