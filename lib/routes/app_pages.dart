import 'package:get/get.dart';import 'package:loc_reminder_app/binder/login_controller_binder.dart';import 'package:loc_reminder_app/routes/routes.dart';import 'package:loc_reminder_app/view/login_view.dart';class AppPages {  AppPages._();  static const INITIAL_ROUTE = Routes.login;  static final routes = [    GetPage(name: Routes.login, page: () => LoginView(), binding: LoginControllerBinder()),  ];}