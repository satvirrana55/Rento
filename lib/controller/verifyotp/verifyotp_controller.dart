import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rento/controller/login/login_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../view/authentication/register/register_view.dart';
import '../../view/authentication/service_provider_complete_profile.dart';

class VerifyController extends GetxController {
  final LoginController _loginController = Get.isRegistered<LoginController>()
      ? Get.find<LoginController>()
      : Get.put(LoginController());
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  static const loginValueData = "loginValue";
  static const loginValueDataIndex = "loginValueIndex";
  static const _limt = 1; // -1 to deactivate
  List<dynamic> loginNumberList = [].obs;
  List<dynamic> loginNumberIndex = [].obs;

  @override
  void onInit() {
    super.onInit();
    getLoginIndex();
    getLoginNumber();
  }

  Future<void> verifyOtp(int? index, otp) async {
    log('index value is ;--- $index, $otp');
    AuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
        verificationId: _loginController.verificationCode!, smsCode: otp);
    signInWithPhoneAuthCred(phoneAuthCredential, index);
    /*  try {
      await FirebaseAuth.instance
          .signInWithCredential(PhoneAuthProvider.credential(
              verificationId: _loginController.verificationCode!, smsCode: otp))
          .then((value) async {
        if (value.user != null) {
          Get.snackbar('Sucessfully', 'You have login sucessfully');
          setLoginValueData();
          setLoginValueIndex('$index');
          if (index == 0) {
            Get.to(() => const ServiceProviderCompleteProfile());
          } else {
            Get.to(() => const RegisterView());
          }
        }
      });
    } catch (e) {
      Get.snackbar('Invalid', 'Otp');
      log('error is: $e');
    } */
  }

  void signInWithPhoneAuthCred(
      AuthCredential phoneAuthCredential, index) async {
    try {
      final authCred =
          await FirebaseAuth.instance.signInWithCredential(phoneAuthCredential);

      if (authCred.user != null) {
        Get.snackbar('Sucessfully', 'You have login sucessfully');

        setLoginValueData();
        setLoginValueIndex('$index');
        if (index == 0) {
          Get.to(() => const ServiceProviderCompleteProfile());
        } else {
          Get.to(() => const RegisterView());
        }
      }
    } on FirebaseAuthException catch (e) {
      print(e.message);
    }
  }

  Future<void> setLoginValueData() async {
    final SharedPreferences prefs = await _prefs;
    List<String>? loginMobileNumberList = prefs.getStringList(loginValueData);
    if (loginMobileNumberList == null) {
      loginMobileNumberList = [];
      loginMobileNumberList.insert(0, _loginController.phoneNumber as String);
    } else {
      final val1 =
          loginMobileNumberList.indexOf(_loginController.phoneNumber as String);
      if (val1 != 0) {
        if (val1 != -1) loginMobileNumberList.removeAt(val1);
        loginMobileNumberList.insert(0, _loginController.phoneNumber as String);
        if (_limt != -1 && loginMobileNumberList.length > _limt) {
          loginMobileNumberList.removeLast();
        }
      }
    }
    update();
    prefs.setStringList(loginValueData, loginMobileNumberList);
    log('Name data is  this$loginMobileNumberList');
    getLoginNumber();
    update();
  }

  Future<void> setLoginValueIndex(String index) async {
    final SharedPreferences prefs = await _prefs;
    List<String>? loginMobileNumberListIndex =
        prefs.getStringList(loginValueDataIndex);

    if (loginMobileNumberListIndex == null) {
      loginMobileNumberListIndex = [];
      loginMobileNumberListIndex.insert(0, index as String);
    } else {
      final val2 = loginMobileNumberListIndex.indexOf(index as String);
      if (val2 != 0) {
        if (val2 != -1) loginMobileNumberListIndex.removeAt(val2);
        loginMobileNumberListIndex.insert(0, index as String);
        if (_limt != -1 && loginMobileNumberListIndex.length > _limt) {
          loginMobileNumberListIndex.removeLast();
        }
      }
    }
    update();
    prefs.setStringList(loginValueDataIndex, loginMobileNumberListIndex);
    log('Name data is  this ${loginMobileNumberListIndex[0]}');
    getLoginIndex();
    update();
  }

  Future<List<String>> getLoginNumber() async {
    log('this value revived');
    final SharedPreferences prefs = await _prefs;
    final loginNumber = prefs.getStringList(loginValueData);
    if (loginNumber == null) return [];
    loginNumberList = loginNumber;
    log(' lengeth  set :-- ${loginNumberList}');

    update();
    return loginNumber;
  }

  Future<List<String>> getLoginIndex() async {
    log('this value revived');
    final SharedPreferences prefs = await _prefs;
    final loginNumberindex = prefs.getStringList(loginValueDataIndex);
    if (loginNumberindex == null) return [];
    loginNumberIndex = loginNumberindex;
    log('data lengeth  loginNumberindex :-- ${loginNumberIndex[0]}');
    update();
    return loginNumberindex;
  }
}
