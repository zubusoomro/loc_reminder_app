import 'package:get/instance_manager.dart';import 'package:loc_reminder_app/controller/login_controller.dart';class LoginControllerBinding extends Bindings {  @override  void dependencies() {    Get.lazyPut<LoginController>(() => LoginController());  }}