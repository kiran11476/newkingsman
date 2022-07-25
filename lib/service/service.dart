import 'dart:convert';

import 'package:dio/dio.dart';

class AuthServices {
  final dio = Dio(
    BaseOptions(
        baseUrl: 'http://127.0.0.1:3000/', responseType: ResponseType.plain),
  );
  //>>>check signin status<<<//
  Future<Response<dynamic>?> checkLogin(signinData) async {
    final response = await dio.post('login', data: jsonEncode(signinData));
    return response;
  }

  //>>>check signin status<<<//
  Future<Response<dynamic>?> checkSignin(signupData) async {
    final response = await dio.post('signup', data: jsonEncode(signupData));
    return response;
  }

  Future<Response<dynamic>?> checkSignout() async {
    final respose = await dio.get('logout');
    return respose;
  }
}
