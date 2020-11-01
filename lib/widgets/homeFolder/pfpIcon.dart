import 'package:flutter/material.dart';
import 'package:FlutterAppTemplate01/components/colors.dart';

profilePicture(){
  return Padding(
    padding: EdgeInsets.all(22.0),
    child: Align(
      alignment: Alignment.topRight,
      child: CircleAvatar(
        backgroundColor: secondary,
        radius: 20,
      ),
    ),
  );
}