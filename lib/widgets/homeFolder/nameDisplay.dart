import 'package:FlutterAppTemplate01/components/colors.dart';
import 'package:FlutterAppTemplate01/components/globalVars.dart';
import 'package:flutter/material.dart';

displayName(sidebar) {
  return Container(
    child: Padding(
      padding: EdgeInsets.all(25.0),
      child: Align(
        alignment: Alignment.topCenter,
        child: sidebar ? null : Text(
          fullName,
          style: TextStyle(
            fontSize: 28,
            color: secondary
          ),
        ),
      ),
    ),
  );
}