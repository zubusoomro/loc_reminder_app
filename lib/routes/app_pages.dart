import 'package:get/get.dart';
import 'package:loc_reminder_app/binder/login_controller_binder.dart';
import 'package:loc_reminder_app/routes/routes.dart';
import 'package:loc_reminder_app/screens/get_started.dart';
import 'package:loc_reminder_app/view/login_view.dart';
import 'package:loc_reminder_app/view/signup_view.dart';
import 'package:loc_reminder_app/view/splashscreen.dart';

class AppPages {
  AppPages._();
  static const INITIAL_ROUTE = Routes.splashscreen;
  static final routes = [
    GetPage(name: Routes.splashscreen, page: () => SplashScreen()),
    GetPage(name: Routes.getStarted, page: () => const GetStarted()),
    GetPage(
        name: Routes.login,
        page: () => LoginView(),
        binding: LoginControllerBinder()),
    GetPage(name: Routes.signup, page: () => SignupView()),
  ];
}
