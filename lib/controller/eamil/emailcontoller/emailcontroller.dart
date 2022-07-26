import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newkings/model/login_model.dart';
import 'package:newkings/view/screens/homepage/homepage.dart';
import 'package:newkings/view/screens/homepage/ssssscreen.dart';

import '../../../model/signupmodel.dart';
import '../../../service/service.dart';

class LogInController extends GetxController {
  var isLoading = false.obs;
  final dio = Dio(BaseOptions(
      baseUrl: 'http://127.0.0.1:3000/signup',
      responseType: ResponseType.plain));
  void userSignin(String email, String password) async {
    Map<String, dynamic> signIn = {"email": email, "password": password};
    try {
      final response = await AuthServices().checkLogin(signIn);
      log(response!.statusCode.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        log(response.toString());
        UserLoginModel datas = userLoginModelFromJson(response.data);
        print(datas.response!.status.toString());
        if (datas.response!.status!) {
          Get.offAll(
            const HomePage(),
          );
        } else {
          Get.snackbar(
            'Login Error',
            'entered mail or password is incorrect',
            snackPosition: SnackPosition.TOP,
            colorText: Colors.red,
          );
        }
        log(response.data);
      } else {
        Get.snackbar(
          'Login Error',
          'entered mail or password is incorrect',
          snackPosition: SnackPosition.TOP,
          colorText: Colors.red,
        );
      }
    } catch (e) {
      Get.snackbar('Login Error', 'entered mail or password is incorrect',
          snackPosition: SnackPosition.BOTTOM, colorText: Colors.red);
    } finally {
      isLoading(false);
    }
  }

  //singup
  signupUser(String name, String mobile, String mail, String password,
      String confirmPassword) async {
    isLoading(true);
    Map<String, dynamic> signupData = {
      "Name": name,
      "Mobile": mobile,
      "Emailaddress": mail,
      "Password": password,
      "confirmPass": confirmPassword,
    };
    try {
      final response = await AuthServices().checkSignin(signupData);
      if (response!.statusCode == 200 || response.statusCode == 201) {
        log(response.toString());
        final data = signUpModelFromJson(response.data);

        if (data.response.acknowledged) {
          Get.snackbar(
            'successfully creatted',
            'discover your own style',
            colorText: Colors.green,
            snackPosition: SnackPosition.BOTTOM,
            padding: const EdgeInsets.all(20),
          );
          Get.offAll(const HomeScreen());
        } else {
          Get.snackbar(
            'Error',
            'entered mail or mobile is already there',
            snackPosition: SnackPosition.BOTTOM,
            colorText: Colors.red,
          );
        }
      }
    } catch (e) {
      Get.snackbar(
        'Signup Error',
        'entered mail or mobile is already there',
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.red,
      );
    } finally {
      isLoading(false);
    }
  }
}
