import 'dart:developer';

import 'package:get/get.dart';

import '../../model/product_model.dart';
import '../../service/product.dart';

class ProductController extends GetxController {
  List<CategoryShoesModel>? recieved;
  getCategoryWiseProduct() async {
    try {
      final response = await HomeService().getCategoryWiseProduct();

      if (response!.statusCode == 200 || response.statusCode == 201) {
        final received = categoryShoesModelFromJson(response.data);
        recieved = received.obs;
        update();
      }
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  void onInit() {
    getCategoryWiseProduct();
    super.onInit();
  }
}
