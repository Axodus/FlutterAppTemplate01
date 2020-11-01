import 'package:FlutterAppTemplate01/components/colors.dart';
import 'package:FlutterAppTemplate01/components/globalVars.dart';
import 'package:flutter/material.dart';

sidebar(context, function) {
  return Container(
    child: Padding(
      padding: EdgeInsets.all(15.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: secondary,
            boxShadow: [
              BoxShadow(
                color: Colors.grey[600].withOpacity(0.5),
                spreadRadius: 500,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            backgroundColor: primary,
                            radius: 40,
                          ),
                          Positioned(
                            bottom: 10.0,
                            left: 30,
                            child: Icon(
                              Icons.edit,
                              size: 20.0,
                              color: secondary,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        fullName,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[600]
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                child: Divider(color: Colors.grey[600]),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 150,
                    child: FloatingActionButton.extended(
                      onPressed: function,
                      label: Text("Close"),
                      backgroundColor: primary,
                    ),
                  )
                ),
              ),
            ],
          )
        ),
      ),
    ),
  );
}