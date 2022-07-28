import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {
  RxBool showProgress = RxBool(false);
  String _verificationId = '';
  int? resendToken;
  late GoogleSignIn googleSignIn;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Rxn<User> firebaseUser = Rxn<User>();
  Rx<bool> codeSent = Rx<bool>(false);
  @override
  void onInit() async {
    super.onInit();
    firebaseUser.bindStream(_auth.authStateChanges());
    firebaseUser.listen((user) {
      if (user != null &&
          user.displayName != null &&
          user.displayName!.isNotEmpty) {
        Get.offNamed("/main");
      }
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  void signInWithGmail() async {
    googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      try {
        await _auth.signInWithCredential(credential);
      } on FirebaseAuthException catch (e) {
        e.printError();
      }
    }
  }

  void signInFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.token);
    _auth.signInWithCredential(facebookAuthCredential);
  }

  void signInApple() {}
  void signInWithCredentials(String smsCode) async {
    print(_verificationId);
    print(smsCode);
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: _verificationId, smsCode: smsCode);
    try {
      await _auth.signInWithCredential(credential);
    } on Exception catch (e) {
      Get.showSnackbar(GetBar(
        title: "Error!",
        duration: const Duration(seconds: 5),
        message: 'Invalid OTP, please check your OTP and try again.',
      ));
    }
  }

  void signInWithPhoneNumber(String number) async {
    await _auth.verifyPhoneNumber(
        phoneNumber: number,
        verificationCompleted: (authCredential) async {
          await _auth.signInWithCredential(authCredential);
        },
        verificationFailed: (firebaseAuthException) {
          if (firebaseAuthException.code == 'invalid-phone-number') {
            Get.showSnackbar(GetBar(
              title: 'Error!',
              duration: const Duration(seconds: 5),
              message: 'The phone number provided is not valid',
            ));
          }
        },
        codeSent: (verificationId, resendToken) {
          showProgress.value = true;
          this.resendToken = resendToken;
          //todo navigation
          // Get.toNamed(Routes.LOGIN_PHONE_VERIFICATOIN);
        },
        codeAutoRetrievalTimeout: (stringVerificationId) {
          showProgress.value = false;
          _verificationId = stringVerificationId;
        });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
