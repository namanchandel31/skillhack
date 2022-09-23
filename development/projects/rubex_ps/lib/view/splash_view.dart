import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rubex_ps/controller/splash_controller.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

class SplashScreen extends GetView {
  final _controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Skillhack',
            style: TextStyle(
                fontSize: 38,
                color: Color(0xff293845),
                letterSpacing: 3,
                fontWeight: FontWeight.w600,
                textBaseline: TextBaseline.alphabetic),
          ),
          Text(
            "Hack a skill, earn rewards, land a job!",
            style: TextStyle(
              fontSize: 16,
              color: Color(0xff293845),
            ),
          )
        ],
      ).centered(),
    );
  }
}
