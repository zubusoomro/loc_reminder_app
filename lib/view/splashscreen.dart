import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loc_reminder_app/view/get_started.dart';

class SplashScreen extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: const Image(image: AssetImage("assets/images/splashscreen_image.png")),
      durationInSeconds: 5,
      navigator: const GetStarted(),
      logoSize: Get.mediaQuery.size.width * 0.4,
      title: Text(
        "Loc Reminder",
        style: TextStyle(
          fontSize: Get.mediaQuery.size.width * 0.05,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      showLoader: false,
      backgroundColor: Color.fromARGB(255, 20, 0, 35),
    );
  }
}
