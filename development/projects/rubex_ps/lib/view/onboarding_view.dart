import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:get/get.dart';
import 'package:rubex_ps/view/login_view.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class OnboardingScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          36.h.heightBox,
          Container(
            // height: 150,
            width: 350,
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 32.0,
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
                color: Color(0xff293845),
                // fontFamily: 'Horizon',
              ),
              child:

//               AnimatedTextKit(
//   animatedTexts: [
//     CustomAnimatedText(
//       'Insert Text Here',
//       textStyle: const TextStyle(
//         fontSize: 32.0,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//   ],
// ),
                  AnimatedTextKit(
                // displayFullTextOnTap: true,
                repeatForever: true,
                animatedTexts: [
                  RotateAnimatedText(
                    duration: Duration(milliseconds: 2500),
                    'Develop skills \nrelevent to industry',
                  ),
                  RotateAnimatedText(
                    duration: Duration(milliseconds: 2500),
                    'Solve problems \nand get rewarded!',
                  ),
                  RotateAnimatedText(
                    duration: Duration(milliseconds: 2500),
                    'Increase odds of \nlanding a job!',
                  ),
                ],
                onTap: () {
                  Get.to(() => LoginScreen());
                },
              ),
            ),
            // child: PageView(
            //   clipBehavior: Clip.antiAlias,
            //   scrollDirection: Axis.vertical,
            //   allowImplicitScrolling: false,
            //   dragStartBehavior: DragStartBehavior.down,
            //   physics: PageScrollPhysics(),
            //   scrollBehavior: ScrollBehavior(),
            //   padEnds: false,
            //   children: [
            //     Text("Hello"),
            //     Text("bro"),
            //     Text("wassup"),
            //   ],
            // ),
          ),
        ],
      ),
    ));
  }
}


// class CustomAnimatedText extends AnimatedText{
//   @override
//   Widget animatedBuilder(BuildContext context, Widget? child) {
    
//     return 
//   }

//   @override
//   void initAnimation(AnimationController controller) {
//     // TODO: implement initAnimation
//   }

// }