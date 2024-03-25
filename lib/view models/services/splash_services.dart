import 'dart:async';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:inferno_core/view/auth/login_page.dart';

class SplashServices {

  void isLogin() {
    // final auth = FirebaseAuth.instance;
    // final user = auth.currentUser;

    // if(user != null && user.emailVerified){
      Timer(
        const Duration(seconds: 2),
            () => Get.offAll(()=> LoginPage()),
      );
    // }
    // else{
    //   Timer(
    //     const Duration(seconds: 2),
    //     () => Get.offAll(()=>LoginPage()),
    //   );
    // }
  }
  // bool isUserLogin() {
  //   final auth = FirebaseAuth.instance;
  //   final user = auth.currentUser;
  //
  //   if(user == null){
  //     return false;
  //   }
  //   else{
  //     return true;
  //   }
  // }

}
