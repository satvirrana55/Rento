import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../view/authentication/verifyotp/verify_otp_screen_view.dart';

class LoginController extends GetxController {
  String? verificationCode;
  String? phoneNumber;

  void login(index, mobileNumber) async {
    log(' This is a Mobile :--$mobileNumber');
    phoneNumber = mobileNumber;

    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: mobileNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await FirebaseAuth.instance
              .signInWithCredential(credential)
              .then((value) async {
            if (value.user != null) {
              log('verfication log is ');
              Get.snackbar('Otp Send in your Mobile Number', '');
              Get.to(() => VerifyOtpScreenView(
                    index: index,
                    verificationCode: verificationCode,
                  ));
            } else {
              log('verfication log is else ');
            }
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          log('${e.message}');
        },
        codeSent: (String? verficationID, int? resendToken) {
          verificationCode = verficationID;
        },
        codeAutoRetrievalTimeout: (String verificationID) {
          verificationCode = verificationID;
        },
        timeout: const Duration(seconds: 60));
    Get.to(() => VerifyOtpScreenView(
          index: index,
          verificationCode: verificationCode,
        ));
    update();
  }
}
