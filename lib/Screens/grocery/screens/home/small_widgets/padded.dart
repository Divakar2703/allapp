import 'package:flutter/material.dart';

Widget padded(Widget widget) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: widget,
  );
}