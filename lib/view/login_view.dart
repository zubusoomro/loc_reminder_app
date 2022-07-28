import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:loc_reminder_app/view/signup_view.dart';
import '../controller/login_controller.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class LoginView extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Text("Login",
                style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Container(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Theme.of(context).shadowColor, width: 1),
                    boxShadow: [
                      BoxShadow(
                          color: Theme.of(context).shadowColor,
                          blurRadius: 100,
                          offset: const Offset(0, 0))
                    ]),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextFormField(
                        style: TextStyle(color: Theme.of(context).accentColor),
                        decoration: InputDecoration(
                          labelText: "Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide(
                              color: Theme.of(context).accentColor,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          labelStyle: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 18),
                          floatingLabelStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 18),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      TextFormField(
                        style: TextStyle(color: Theme.of(context).accentColor),
                        decoration: InputDecoration(
                          labelText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide(
                              color: Theme.of(context).accentColor,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          labelStyle: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 18),
                          floatingLabelStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 18),
                        ),
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                          onPressed: () {
                            Get.toNamed('/main');
                          },
                          // ignore: sort_child_properties_last
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.045),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Theme.of(context).primaryColor),
                            minimumSize: MaterialStateProperty.all(Size(
                                MediaQuery.of(context).size.width,
                                MediaQuery.of(context).size.height * 0.08)),
                          )),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            child: Text("Forgot Password",
                                style: TextStyle(
                                    color: Theme.of(context).accentColor,
                                    fontSize: 12)),
                            onPressed: () {},
                          ),
                          const Text("|",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey)),
                          TextButton(
                            child: Text("Sign Up",
                                style: TextStyle(
                                    color: Theme.of(context).accentColor,
                                    fontSize: 12)),
                            onPressed: () {
                              Get.toNamed("/signup");
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.003),
                      const Text("OR",
                          style: TextStyle(fontSize: 12, color: Colors.grey)),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02),
                      SocialLoginButton(
                          buttonType: SocialLoginButtonType.google,
                          onPressed: () {}),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02),
                      SocialLoginButton(
                          buttonType: SocialLoginButtonType.facebook,
                          onPressed: () {}),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02),
                      SocialLoginButton(
                          buttonType: SocialLoginButtonType.apple,
                          onPressed: () {}),
                    ],
                  ),
                )),
          ],
        ),
      ),
    ));
    throw UnimplementedError();
  }
}
