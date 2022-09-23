import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:rubex_ps/controller/login_controller.dart';
import 'package:rubex_ps/view/otp_view.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

final _controller = Get.put(LoginController());

class LoginScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          20.h.heightBox,
          Text(
            "Skillhack",
            style: TextStyle(
                fontSize: 32,
                color: Color(0xff293845),
                letterSpacing: 1,
                fontWeight: FontWeight.w500,
                textBaseline: TextBaseline.alphabetic),
          ).centered(),
          5.h.heightBox,
          Text(
            "Login via your mobile number \nto start hacking skill",
            style: TextStyle(
              fontSize: 16,
              color: Color(0xff293845),
              fontWeight: FontWeight.w400,
            ),
          ),
          2.h.heightBox,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "+91",
                    style: TextStyle(
                      fontSize: 28,
                      color: Color.fromARGB(255, 23, 31, 38),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Obx(() => _controller.check.value
                      ? !_controller.ph.value.isGreaterThan(999999999)
                          ? 26.heightBox
                          : 0.heightBox
                      : 0.heightBox)
                ],
              ),
              5.w.widthBox,
              Obx(() => TextFormField(
                  // maxLength: 10,
                  keyboardType: TextInputType.phone,
                  controller: _controller.phone,
                  onChanged: (val) {
                    _controller.ph.value = int.parse(val);
                    print(_controller.ph.value);
                  },
                  decoration: InputDecoration(
                    semanticCounterText: "sem",
                    errorStyle: TextStyle(color: Color(0xff6558f5)),
                    errorText: _controller.check.value
                        ? !_controller.ph.value.isGreaterThan(999999999)
                            ? "Phone number must contain more than 10 digits!"
                            : null
                        : null,
                    errorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: Color(0xff6558f5)),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: Color(0xff6558f5)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: Color(0xffc5ced6)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: Color(0xff293845)),
                    ),
                    hintText: "Mobile number",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Color(0xffc3cfd9),
                      fontWeight: FontWeight.w500,
                    ),
                  ))).expand(),
            ],
          ),
          6.h.heightBox,
          Obx(() => ElevatedButton(
              onPressed: () {
                _controller.check.value = true;
                !_controller.ph.value.isGreaterThan(999999999)
                    ? "Phone number must contain more than 10 digits!"
                    : Get.to(() => OtpScreen(no: _controller.phone.text,));
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      !_controller.ph.value.isGreaterThan(999999999)
                          ? Colors.grey
                          : Color(0xff6558f5)),
                  shape:
                      MaterialStateProperty.all<OutlinedBorder>(CircleBorder())
                  // shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
                  //   return CircleBorder(
                  //       side: BorderSide();
                  //   // return RoundedRectangleBorder(
                  //   //     borderRadius: BorderRadius.circular(20));
                  // }),
                  ),
              child: Icon(
                  Icons.arrow_forward_ios_rounded))).h(50).objectBottomRight()
        ],
      ).paddingSymmetric(horizontal: 14)),
    );
  }
}
