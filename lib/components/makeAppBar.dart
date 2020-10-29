import 'package:FlutterAppTemplate01/components/colors.dart';
import 'package:flutter/material.dart';

appBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(0.7),
    child: AppBar(
      flexibleSpace: Container(
        color: primary,
      ),
    ),
  );
}