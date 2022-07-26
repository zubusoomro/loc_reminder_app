import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../controller/login_controller.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class LoginView extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Login",
              style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Container(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Theme.of(context).shadowColor,
                        blurRadius: 20,
                        offset: const Offset(5, 5))
                  ]),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 3),
                          ),
                          labelText: "Email",
                          labelStyle: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 20)),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor),
                          ),
                          labelText: "Password",
                          labelStyle: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 20)),
                      obscureText: true,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                        onPressed: () {},
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
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
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
                            style: TextStyle(fontSize: 12, color: Colors.grey)),
                        TextButton(
                          child: Text("Sign Up",
                              style: TextStyle(
                                  color: Theme.of(context).accentColor,
                                  fontSize: 12)),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.005),
                    const Text("OR",
                        style: TextStyle(fontSize: 12, color: Colors.grey)),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    SocialLoginButton(
                        buttonType: SocialLoginButtonType.google,
                        onPressed: () {}),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    SocialLoginButton(
                        buttonType: SocialLoginButtonType.facebook,
                        onPressed: () {}),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    SocialLoginButton(
                        buttonType: SocialLoginButtonType.apple,
                        onPressed: () {})
                  ],
                ),
              ))
        ],
      ),
    ));
    throw UnimplementedError();
  }
}
