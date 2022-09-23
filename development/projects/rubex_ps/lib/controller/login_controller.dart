import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxInt ph = 0.obs;
  RxBool check = false.obs;
  TextEditingController phone = TextEditingController();

  // void numberChangd(int val) {
  //   ph.value = val;
  // }

  Future<bool> Function() submitFunction() {
    return () async {
      print('Make database call to create ${ph.value} account');
      await Future.delayed(
          const Duration(seconds: 1), () => print('OTP Sent !!!'));
      return true;
    };
  }
}
