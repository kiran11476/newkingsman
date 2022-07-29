import 'package:dio/dio.dart';

class HomeService {
  final dio = Dio(
    BaseOptions(
        responseType: ResponseType.plain, baseUrl: 'http://10.0.2.2:3000/'),
  );
  Future<Response<dynamic>?> getCategoryWiseProduct() async {
    final response = await dio.get('user_view/shoes');

    return response;
  }
}
