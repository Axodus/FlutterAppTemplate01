import 'package:FlutterAppTemplate01/components/colors.dart';
import 'package:FlutterAppTemplate01/components/curvePainter.dart';
import 'package:FlutterAppTemplate01/components/makeAppBar.dart';
import 'package:FlutterAppTemplate01/components/sidebar.dart';
import 'package:FlutterAppTemplate01/widgets/homeFolder/nameDisplay.dart';
import 'package:FlutterAppTemplate01/widgets/homeFolder/openSidebar.dart';
import 'package:FlutterAppTemplate01/widgets/homeFolder/pfpIcon.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _sidebar = false;

  sidebarToggle(){
    print(_sidebar ? "Opening sidebar" : "Closing sidebar");
    setState(() {
      _sidebar = !_sidebar;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Container(
        child: Stack(
          children: [
            CustomPaint(
              size: MediaQuery.of(context).size,
              painter: CustomCurve(),
            ),
            profilePicture(),
            AnimatedOpacity(
              opacity: _sidebar ? 1.0 : 0.0,
              duration: Duration(milliseconds: 300),
              child: sidebar(context, sidebarToggle),
            ),
            Padding(
              padding: EdgeInsets.all(22.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: _sidebar ? null : sidebarButton(sidebarToggle),
              ),
            ),
            displayName(_sidebar),
          ],
        ),
        color: secondary,
      )
    );
  }
}