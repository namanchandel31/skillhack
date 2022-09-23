import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:rubex_ps/view/profileSetup_view.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class OtpScreen extends GetView {
  OtpScreen({required this.no, Key? key}) : super(key: key);
  String no;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          30.h.heightBox,
          Text(
            "Insert the OTP sent on your \nmobile number +91 ${no}",
            style: TextStyle(
              fontSize: 16,
              color: Color(0xff293845),
              fontWeight: FontWeight.w400,
            ),
          ),
          2.h.heightBox,
          OTPTextField(
            length: 4,
            width: MediaQuery.of(context).size.width,
            fieldWidth: 50,
            style: TextStyle(fontSize: 17),
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldStyle: FieldStyle.box,
            outlineBorderRadius: 8,
            otpFieldStyle: OtpFieldStyle(
                borderColor: Color(0xffc5ced6),
                enabledBorderColor: Color(0xff293845)),
            keyboardType: TextInputType.number,
            onCompleted: (pin) {
              print("Completed: " + pin);
            },
          ),
          6.h.heightBox,
          ElevatedButton(
                  onPressed: () {
                    Get.to(() => ProfileSetupScreen());
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xff6558f5)),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                          CircleBorder())
                      // shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
                      //   return CircleBorder(
                      //       side: BorderSide();
                      //   // return RoundedRectangleBorder(
                      //   //     borderRadius: BorderRadius.circular(20));
                      // }),
                      ),
                  child: Icon(Icons.arrow_forward_ios_rounded))
              .h(50)
              .objectBottomRight()
        ],
      ).pSymmetric(h: 14)),
    );
  }
}
