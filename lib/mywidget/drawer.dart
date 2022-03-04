// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, missing_required_param

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:test1/constant.dart';
import 'package:test1/mywidget/custome_Button.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.72,
      child: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(250)),
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            CircleAvatar(
              radius: MediaQuery.of(context).size.width * 0.15,
              backgroundImage: AssetImage('assets/images/what.jpg'),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Profile',
                  style: TextStyle(
                      fontFamily: 'ACaslonPro',
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Text(
                  'Privacy policy',
                  style: TextStyle(
                      fontFamily: 'ACaslonPro',
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Text(
                  'Terms',
                  style: TextStyle(
                      fontFamily: 'ACaslonPro',
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                FlutterSwitch(
                  width: 70.0,
                  height: 40.0,
                  toggleSize: 35.0,
                  value: false,
                  borderRadius: 30.0,
                  padding: 0.6,
                  activeToggleColor: Color(0xFF6E40C9),
                  inactiveToggleColor: mypink,
                  activeSwitchBorder: Border.all(
                    color: Color(0xFF3C1E70),
                    width: 6.0,
                  ),
                  inactiveSwitchBorder: Border.all(
                    color: mypink,
                    width: 5.0,
                  ),
                  inactiveText: 'E',
                  inactiveTextColor: myblack,
                  inactiveTextFontWeight: FontWeight.bold,
                  activeColor: Color(0xFF271052),
                  inactiveIcon: Icon(Icons.language),
                  inactiveColor: Colors.white,
                  onToggle: (bool value) {},
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Text(
                  'Mode',
                  style: TextStyle(
                      fontFamily: 'ACaslonPro',
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                CustomeButton(
                  heigh: MediaQuery.of(context).size.height * 0.072,
                  widt: MediaQuery.of(context).size.width * 0.4,
                  bouttonName: 'Logout',
                  circule: 20,
                  bouttonColer: mypink,
                  textBouttonColor: mypink1,
                  textBouttonSize: 15,
                ),
              ],
            ),
            Spacer(
              flex: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Copyright © 2021 NetFarmy \n All right reserved.',
                    style: TextStyle(
                        color: Color(0xff263441),
                        fontSize: 16,
                        fontWeight: FontWeight.w100,
                        fontFamily: 'ACaslonPro1'),
                  )),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
