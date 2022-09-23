import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileSetupScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          10.h.heightBox,
          CircleAvatar(
            backgroundColor: Color(0xff293845),
            // maxRadius: 20,
            // minRadius: 16,
            radius: 38,
            child: Icon(Icons.person, size: 40),
          ),
          10.heightBox,
          Text(
            "Setup Your Profile",
            style: TextStyle(fontSize: 20),
          ).centered(),
          10.heightBox,
        ],
      )),
    );
  }
}
