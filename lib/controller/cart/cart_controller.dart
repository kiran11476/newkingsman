// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:newkings/main.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import '../../service/cart_service.dart';

// class CartController extends GetxController {
//   var isAdd = true.obs;
//   List<ProductElement>? productElemnt;
//   int total = 0;
//   int? cartCount = 0;
//   //>>>>>>>>>>>>>get item<<<<<<<<<<<<<<<//
//   getCartItems() async {
//     try {
//       final sharedPref = await SharedPreferences.getInstance();
//       final userId = sharedPref.get(loggedKey);
//       final response = await CartServiceEndPoint().getCartItems(userId);

//       if (response!.statusCode == 200 || response.statusCode == 201) {
//         final datas = getCartItemsModelFromJson(response.data);

//         // log("-----${datas.products[0].id}");
//         productElemnt = datas.products!.obs;

//         total = datas.total!;
//         cartCount = datas.cartCount;
//         update();
//       }
//     } catch (e) {}
//   }

//   //>>>>>>>>>>>>>add item<<<<<<<<<<<<<<<//
//   addCartItems(String productId) async {
//     try {
//       final response = await CartServiceEndPoint().addCartItems(productId);
//       log(response!.data);
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         final datas = addCartModelFromJson(response.data);
//         if (datas.status) {
//           Get.snackbar('Added succesfully', 'Product has been added to cart',
//               colorText: Colors.green, snackPosition: SnackPosition.TOP);
//           getCartItems();
//           isAdd.value = false;
//           update();
//         }
//       }
//     } catch (e) {
//       log('add controller>>>>>>>>>>>>>>>>>>$e<<<<<<<<<<<<<<<<<<');
//     }
//   }

//   //>>>>>>>>>>>>>remove item<<<<<<<<<<<<<<<//
//   removeCartItems(String productId, String cartId) async {
//     Map<String, dynamic> removeData = {
//       "cart": cartId,
//       "product": productId,
//     };
//     try {
//       final respose = await CartServiceEndPoint().removeCartItems(removeData);
//       log(respose.toString());
//       if (respose!.statusCode == 200 || respose.statusCode == 201) {
//         final datas = removeCartModelFromJson(respose.data);
//         log(datas.toString());
//         if (datas.removeProduct) {
//           getCartItems();
//           update();
//           Get.snackbar(
//               'removed succesfully', 'Product has been removed to cart',
//               colorText: kredColor, snackPosition: SnackPosition.BOTTOM);

//           // Get.offAll(const ScreenCart());
//         }
//       }
//     } catch (e) {
//       log('remove controller>>>>>>>>>>>>>>>>>>$e<<<<<<<<<<<<<<<<<<');
//     }
//   }

//   @override
//   void onInit() {
//     getCartItems();
//     super.onInit();
//   }
// }
