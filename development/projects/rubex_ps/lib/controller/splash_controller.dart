import 'dart:async';

import 'package:get/get.dart';
import 'package:rubex_ps/view/onboarding_view.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Timer(Duration(seconds: 4), () => Get.offAll(() => OnboardingScreen()));
    super.onInit();
  }
}
