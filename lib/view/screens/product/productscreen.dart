import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newkings/controller/product_cont/productcrontroller.dart';
import 'package:newkings/model/product_model.dart';
import 'package:newkings/view/screens/product/widget/buy_now.dart';

import '../widgets/widgets.dart';

class ScreenProduct extends StatelessWidget {
  final CategoryShoesModel product;
  const ScreenProduct({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemGrey5,
      appBar: kingsman,
      body: ProductFeild(),
      bottomSheet: const BuyNow(),
    );
  }
}

//
class ProductFeild extends StatelessWidget {
  late CategoryShoesModel? product;
  ProductFeild({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
        init: ProductController(),
        builder: (controller) => controller.recieved == null
            ? const Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: Swiper(
                      autoplayDisableOnInteraction: true,
                      itemBuilder: (context, index) {
                        return Container();
                      },
                      itemCount: 10,
                      control: SwiperControl(
                        color: Theme.of(context).backgroundColor,
                      ),
                      pagination: SwiperPagination(
                        margin: EdgeInsets.zero,
                        builder: SwiperCustomPagination(
                          builder: (context, snapshot) {
                            return Container();
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Watch',
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                                  color: CupertinoColors.systemGrey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            kheight20,
                            SizedBox(
                              width: 300,
                              height: 50,
                              child: Text(
                                controller.recieved![0].productName,
                                style: GoogleFonts.lato(
                                  textStyle: const TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            kheight20,
                            Text(
                              controller.recieved![0].productPrice,
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                                  color: Colors.green,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              'free delivery',
                              style: GoogleFonts.abhayaLibre(
                                textStyle: const TextStyle(),
                              ),
                            ),
                            kheight20,
                            kheight20,
                            SizedBox(
                              width: 280,
                              child: Text(
                                controller.recieved![0].productDescription,
                                style: const TextStyle(
                                    overflow: TextOverflow.clip),
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite_border_outlined))
                      ],
                    ),
                  )
                ],
              ));
  }
}

// final controller = Get.put(ProductController());




