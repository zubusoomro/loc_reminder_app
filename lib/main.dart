import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'routes/app_pages.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemStatusBarContrastEnforced: true,
  ));

  runApp(GetMaterialApp(
    getPages: AppPages.routes,
    initialRoute: AppPages.INITIAL_ROUTE,
    title: 'Loc Reminder',
    /*
        Dark Theme Colors
      */
    darkTheme: ThemeData(
        appBarTheme: const AppBarTheme(
            elevation: 0,
            color: Colors.black,
            centerTitle: true,
            titleTextStyle: TextStyle(color: Color.fromARGB(255, 253, 186, 71), fontSize: 20, fontWeight: FontWeight.bold),
            iconTheme: IconThemeData(color: Color.fromARGB(255, 253, 186, 71))),
        scaffoldBackgroundColor: Colors.black,
        primaryColor: const Color.fromARGB(255, 253, 186, 71),
        accentColor: const Color(0xFFFFFFFF),
        canvasColor: const Color.fromARGB(255, 29, 29, 32),
        shadowColor: const Color.fromARGB(216, 29, 29, 32),
        errorColor: const Color(0xFFB00020),
        secondaryHeaderColor: const Color.fromARGB(255, 133, 86, 4),
        buttonTheme: const ButtonThemeData(buttonColor: Color.fromARGB(255, 253, 143, 139), textTheme: ButtonTextTheme.primary)),
    /*
        Light Theme Colors
      */
    theme: ThemeData(
        appBarTheme: const AppBarTheme(
            elevation: 0,
            color: Colors.white,
            centerTitle: true,
            titleTextStyle: TextStyle(color: Color.fromARGB(255, 113, 74, 142), fontSize: 20, fontWeight: FontWeight.bold),
            iconTheme: IconThemeData(color: Color.fromARGB(255, 113, 74, 142))),
        scaffoldBackgroundColor: Colors.white,
        primaryColor: const Color.fromARGB(255, 113, 74, 142),
        accentColor: Color.fromARGB(255, 0, 0, 0),
        canvasColor: Colors.white,
        shadowColor: const Color.fromARGB(255, 236, 236, 236),
        errorColor: const Color.fromARGB(255, 212, 0, 39),
        secondaryHeaderColor: const Color.fromARGB(255, 103, 46, 146),
        buttonTheme: const ButtonThemeData(buttonColor: Color.fromARGB(255, 253, 143, 139), textTheme: ButtonTextTheme.primary)),
    debugShowCheckedModeBanner: false,
  ));
}
