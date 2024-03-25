import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:inferno_core/res/helper_extensions.dart';

import '../res/constants.dart';

class Utils {

  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static snackBar(String title, String message) {
    Get.snackbar(
      title,
      message,
      backgroundColor: toastColor,
      colorText: whiteColor,
      duration: const Duration(seconds: 4),
    );
  }

  static toastMsg(String message, {Color color = toastColor}) {
    Fluttertoast.showToast(
      msg: message,
      textColor: whiteColor,
      backgroundColor: color,
      toastLength: Toast.LENGTH_LONG,
    );
  }

  static showLoadingDialog(String message) {
    Get.dialog(
      barrierDismissible: false,
      Dialog(
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: SizedBox(
          width: 260,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SpinKitCircle(
                  size: 60,
                  color: btnColor,
                ),
                8.ph,
                Text(
                  message,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: txtColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static showSimpleLoading() {
    Get.dialog(
      barrierDismissible: false,
      const Center(
        child: CircularProgressIndicator(
          color: whiteColor,
        ),
      ),
    );
  }

  static void dismissLoadingDialog() {
    if (Get.isDialogOpen!) {
      Get.back(); // Close the loading dialog
    }
  }

}
