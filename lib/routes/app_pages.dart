import 'package:get/get.dart';
import 'package:loc_reminder_app/binder/login_controller_binding.dart';
import 'package:loc_reminder_app/routes/routes.dart';
import 'package:loc_reminder_app/view/get_started.dart';
import 'package:loc_reminder_app/view/homepage.dart';
import 'package:loc_reminder_app/view/login_view.dart';
import 'package:loc_reminder_app/view/notes_view.dart';
import 'package:loc_reminder_app/view/signup_view.dart';
import 'package:loc_reminder_app/view/splashscreen.dart';

class AppPages {
  AppPages._();
  static const initialRoute = Routes.splashscreen;
  static final routes = [
    GetPage(name: Routes.splashscreen, page: () => const SplashScreen()),
    GetPage(name: Routes.getStarted, page: () => const GetStarted()),
    GetPage(name: Routes.login, page: () => const LoginView(), binding: LoginControllerBinding()),
    GetPage(name: Routes.signup, page: () => SignupView()),
    GetPage(name: Routes.main, page: () => Homepage()),
    GetPage(name: Routes.notes, page: () => NotesView()),
  ];
}
