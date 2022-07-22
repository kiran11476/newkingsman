import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get.dart';

class LogInController extends GetxController {
  final dio = Dio(BaseOptions(baseUrl: ' http://10.0.2.2:3000/'));
  void userSignin(String email, String password) async {
    Map<String, dynamic> signIn = {"email": email, "password": password};
    final response = await dio.post('login', data: jsonEncode(signIn));
    log(response.toString());
  }

  void pagecontoller(int index) {
    index = 0;

    current(currentindex) {
      int currentindex = index;
    }
  }
}
