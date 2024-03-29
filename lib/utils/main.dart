import "package:firebase_core/firebase_core.dart";
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:loc_reminder_app/controller/initial_controller.dart';

import '../routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemStatusBarContrastEnforced: true,
  ));

  runApp(GetMaterialApp(
    getPages: AppPages.routes,
    initialRoute: AppPages.initialRoute,
    initialBinding: BindingsBuilder(() {
      Get.put(InitialController(), permanent: true);
    }),
    title: 'Loc Reminder',
    /*
        Dark Theme Colors
      */
    darkTheme: ThemeData(
        drawerTheme: const DrawerThemeData(
          elevation: 20,
          backgroundColor: Colors.black,
        ),
        appBarTheme: const AppBarTheme(
            elevation: 0,
            color: Colors.black,
            centerTitle: true,
            titleTextStyle: TextStyle(color: Color.fromARGB(255, 253, 186, 71), fontSize: 20, fontWeight: FontWeight.bold),
            iconTheme: IconThemeData(color: Color.fromARGB(255, 253, 186, 71))),
        scaffoldBackgroundColor: Colors.black,
        primaryColor: const Color.fromARGB(255, 253, 186, 71),
        accentColor: const Color(0xFFFFFFFF),
        cardColor: const Color.fromARGB(255, 26, 26, 26),
        canvasColor: const Color.fromARGB(255, 26, 26, 26),
        shadowColor: const Color.fromARGB(216, 29, 29, 32),
        errorColor: const Color(0xFFB00020),
        secondaryHeaderColor: Colors.black,
        buttonTheme: const ButtonThemeData(buttonColor: Color.fromARGB(255, 253, 143, 139), textTheme: ButtonTextTheme.primary),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color.fromARGB(255, 255, 255, 255), width: 2.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 253, 186, 71),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 253, 186, 71),
            ),
          ),
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          labelStyle: const TextStyle(
            color: Color.fromARGB(255, 253, 186, 71),
          ),
        )),
    /*
        Light Theme Colors
      */
    theme: ThemeData(
        drawerTheme: const DrawerThemeData(
          elevation: 20,
          backgroundColor: Color.fromARGB(255, 113, 74, 142),
        ),
        appBarTheme: const AppBarTheme(
            elevation: 0,
            color: Colors.white,
            centerTitle: true,
            titleTextStyle: TextStyle(color: Color.fromARGB(255, 113, 74, 142), fontSize: 20, fontWeight: FontWeight.bold),
            iconTheme: IconThemeData(color: Color.fromARGB(255, 113, 74, 142))),
        scaffoldBackgroundColor: Colors.white,
        primaryColor: const Color.fromARGB(255, 113, 74, 142),
        accentColor: const Color.fromARGB(255, 0, 0, 0),
        canvasColor: Colors.white,
        cardColor: Colors.white,
        shadowColor: const Color.fromARGB(255, 236, 236, 236),
        errorColor: const Color.fromARGB(255, 212, 0, 39),
        secondaryHeaderColor: const Color.fromARGB(255, 113, 74, 142),
        buttonTheme: const ButtonThemeData(buttonColor: Color.fromARGB(255, 253, 143, 139), textTheme: ButtonTextTheme.primary)),
    debugShowCheckedModeBanner: false,
  ));
}
