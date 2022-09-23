import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rubex_ps/view/login_view.dart';
import 'package:rubex_ps/view/onboarding_view.dart';
import 'package:rubex_ps/view/profileSetup_view.dart';
import 'package:rubex_ps/view/splash_view.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  void initState() {
    // TODO: implement initState
    print("**********************************************************");
    initDynamicLinks();
    print("**********************************************************");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        routes: {
          '/profile': (BuildContext context) => ProfileSetupScreen(),
          '/login': (BuildContext context) => LoginScreen(),
        },
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Poppins',
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen(),
      ),
    );
  }
}

void initDynamicLinks() async {
  await Firebase.initializeApp();

  FirebaseDynamicLinks.instance.onLink.listen((dynamicLinkData) {
    final Uri? deeplink = dynamicLinkData.link;
    print("-------------------------------------------------------");

    if (deeplink != null) {
      if (deeplink.queryParameters.values.first == "/profile") {
        print("deeplink data " + deeplink.queryParameters.values.first);

        Get.toNamed('/profile');
      } else if (deeplink.queryParameters.values.first == "/login") {
        print("deeplink data " + deeplink.queryParameters.values.first);

        Get.toNamed('/login');
      }
    } else {
      Get.to(() => SplashScreen());
    }
  });
}
