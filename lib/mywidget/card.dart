// ignore_for_file: must_be_immutable, prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../constant.dart';

class MyCard extends StatelessWidget {
  late double height;
  late double width;
  late String text;
  MyCard({
    Key? key,
    required this.height,
    required this.width,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        color: mywhite1,
        height: height,
        width: width,
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'ACaslonPro',
            fontFamilyFallback: ['Semibold'],
            color: mypink,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
