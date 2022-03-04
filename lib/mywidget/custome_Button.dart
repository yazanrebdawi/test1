// ignore_for_file: deprecated_member_use, file_names, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  final double? heigh;
  final double? widt;

  final String? bouttonName;
  final Color? bouttonColer;
  final Color? textBouttonColor;
  final double? textBouttonSize;
  final Color? borderSideColor;
  final Function()? onpress;
  final double? circule;

  const CustomeButton({
    @required this.bouttonName,
    @required this.onpress,
    this.bouttonColer,
    this.textBouttonColor,
    this.textBouttonSize,
    this.circule,
    this.borderSideColor,
    this.heigh,
    this.widt,
  });
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onpress,
      child: Container(
        height: heigh,
        width: widt,
        decoration: BoxDecoration(
          color: bouttonColer ?? Colors.white,
          borderRadius: BorderRadius.circular(circule ?? 0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(1, 9),
            ),
          ],
        ),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(6),
          child: Text(
            bouttonName!,
            style: TextStyle(
              color: textBouttonColor ?? Colors.black,
              fontSize: textBouttonSize ?? 30,
              fontWeight: FontWeight.w300,
              fontFamily: 'ACaslonPro',
            ),
          ),
        )),
      ),
    );
  }
}
