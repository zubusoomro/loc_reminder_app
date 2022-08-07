import 'package:get/get.dart';
import 'package:loc_reminder_app/routes/routes.dart';
import 'package:loc_reminder_app/screens/get_started.dart';
import 'package:loc_reminder_app/screens/home/homepage.dart';
import 'package:loc_reminder_app/screens/home/homepage_controller.dart';
import 'package:loc_reminder_app/screens/login/login_controller.dart';
import 'package:loc_reminder_app/screens/login/login_view.dart';
import 'package:loc_reminder_app/screens/notes_view.dart';
import 'package:loc_reminder_app/screens/signup_view.dart';
import 'package:loc_reminder_app/screens/splashscreen.dart';

import '../screens/notes_create.dart';

class AppPages {
  AppPages._();

  static const initialRoute = Routes.splashscreen;
  static final routes = [
    GetPage(name: Routes.splashscreen, page: () => const SplashScreen()),
    GetPage(name: Routes.getStarted, page: () => const GetStarted()),
    GetPage(
        name: Routes.login,
        page: () => const LoginView(),
        binding: BindingsBuilder(() {
          Get.lazyPut(() => LoginController());
        })),
    GetPage(name: Routes.signup, page: () => const SignupView()),
    GetPage(
        name: Routes.main,
        page: () => Homepage(),
        binding: BindingsBuilder(() {
          Get.lazyPut<HomePageController>(() => HomePageController());
        })),
    GetPage(name: Routes.notes, page: () => const NotesView()),
    GetPage(name: Routes.createNotes, page: () => const CreateNotesView()),
  ];
}
