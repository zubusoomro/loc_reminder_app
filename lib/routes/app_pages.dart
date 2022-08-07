import 'package:get/get.dart';
import 'package:loc_reminder_app/binder/login_controller_binder.dart';
import 'package:loc_reminder_app/routes/routes.dart';
import 'package:loc_reminder_app/view/get_started.dart';
import 'package:loc_reminder_app/view/homepage.dart';
import 'package:loc_reminder_app/view/login_view.dart';
import 'package:loc_reminder_app/view/notes_view.dart';
import 'package:loc_reminder_app/view/signup_view.dart';

import '../view/notes_create.dart';

class AppPages {
  AppPages._();
  static const INITIAL_ROUTE = Routes.getStarted;
  static final routes = [
    GetPage(name: Routes.getStarted, page: () => const GetStarted()),
    GetPage(
        name: Routes.login,
        page: () => LoginView(),
        binding: LoginControllerBinder()),
    GetPage(name: Routes.signup, page: () => SignupView()),
    GetPage(name: Routes.main, page: () => Homepage()),
    GetPage(name: Routes.notes, page: () => NotesView()),
    GetPage(name: Routes.createNotes, page: () => CreateNotesView()),
  ];
}
