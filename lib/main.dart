import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loc_reminder_app/binder/login_controller_binder.dart';

import 'routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(GetMaterialApp(
    getPages: AppPages.routes,
    initialRoute: AppPages.INITIAL_ROUTE,
    initialBinding: LoginControllerBinder(),
    title: 'Point',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Color(0xFFFFA304),
      primaryColorDark: Color(0xffc67400),
      primaryColorLight: Color(0xffffd44a),
      accentColor: Color(0xff2D2D2D),
      primarySwatch: Colors.orange,
    ),
  ));
}
