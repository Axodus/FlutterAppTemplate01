import 'package:FlutterAppTemplate01/components/colors.dart';
import 'package:flutter/material.dart';

sidebarButton(function) {
  return GestureDetector(
    onTap: function,
    child: Container(
      height: 30,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 7,
              width: 28,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: secondary
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 7,
              width: 34,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: secondary
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 7,
              width: 28,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: secondary
              ),
            ),
          ),
        ],
      ),
    ),
  );
}