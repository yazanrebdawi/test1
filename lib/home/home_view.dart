// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:test1/constant.dart';
import 'package:test1/home/home_controller.dart';
import 'package:test1/mywidget/card.dart';
import 'package:test1/mywidget/custome_Button.dart';
import 'package:test1/mywidget/drawer.dart';

class Home extends StatelessWidget {
  HomeController controller = Get.put<HomeController>(HomeController());
  Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: controller.scaffoldKey,
      drawer: MyDrawer(),
      body: SafeArea(
        child: Container(
          color: mywhite,
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.33,
                child: Stack(
                  children: [
                    Positioned(
                        top: -size.width * 0.37,
                        left: -size.width * 0.77,
                        child: CircleAvatar(
                          child: Stack(children: [
                            Positioned(
                              top: size.width * 0.58,
                              left: size.width * 0.8,
                              child: IconButton(
                                onPressed: controller.openDrawer,
                                icon: Icon(
                                  Icons.menu,
                                  color: mywhite,
                                ),
                              ),
                            ),
                          ]),
                          radius: size.width * 0.56,
                          backgroundColor: myyelow,
                        )),
                    Positioned(
                        top: size.width * 0.015,
                        left: size.width * 0.4,
                        right: size.width * 0.3,
                        child: SvgPicture.asset('assets/images/logo.svg')),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyCard(
                          text: 'Register',
                          height: size.height * 0.12,
                          width: size.width * 0.5)
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MyCard(
                        text: 'About Us',
                        height: size.height * 0.11,
                        width: size.height * 0.18,
                      ),
                      MyCard(
                        text: 'Contact',
                        height: size.height * 0.11,
                        width: size.height * 0.18,
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MyCard(
                        text: 'Investment \n    Guide',
                        height: size.height * 0.11,
                        width: size.height * 0.18,
                      ),
                      MyCard(
                        text: 'Centers',
                        height: size.height * 0.11,
                        width: size.height * 0.18,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CustomeButton(
                    heigh: MediaQuery.of(context).size.height * 0.072,
                    widt: MediaQuery.of(context).size.width * 0.9,
                    bouttonName: 'Invite someone',
                    onpress: () {},
                    circule: 20,
                    bouttonColer: mypink,
                    textBouttonSize: 15,
                    textBouttonColor: mywhite,
                  ),
                ],
              ),
              Spacer(),
              Divider(
                color: Colors.black,
                indent: 125,
                endIndent: 125,
                thickness: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
