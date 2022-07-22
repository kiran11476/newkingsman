import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/widgets.dart';

class ScreenProduct extends StatelessWidget {
  const ScreenProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemGrey5,
      appBar: kingsman,
      body: const ProductFeild(),
      bottomSheet: const BuyNow(),
    );
  }
}

class BuyNow extends StatelessWidget {
  const BuyNow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Color.fromARGB(255, 88, 6, 2),
          ),
          height: 60,
          width: 200,
          child: Text(
            "Buy Now",
            style: GoogleFonts.lato(
              textStyle:
                  TextStyle(fontSize: 20, color: Theme.of(context).canvasColor),
            ),
          ),
        ),
        const SizedBox(
          width: 3,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 128, 103, 3),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            height: 60,
            width: double.infinity,
            child: Text(
              'Add to Cart',
              style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      fontSize: 20, color: Theme.of(context).canvasColor)),
            ),
          ),
        ),
      ],
    );
  }
}

class ProductFeild extends StatelessWidget {
  const ProductFeild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 300,
          width: double.infinity,
          child: Swiper(
            autoplayDisableOnInteraction: true,
            itemBuilder: (context, index) {
              return Image.network(
                'https://t3.ftcdn.net/jpg/03/67/38/78/360_F_367387846_OKdglMdC8NSHIaW65XUoiVfTjErAcOdr.jpg',
                fit: BoxFit.contain,
              );
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
                      'AEROFUSION BLACK  HSJSK',
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
                    ' ₹ 290000 /-',
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
                  const SizedBox(
                    width: 280,
                    child: Text(
                      'A contemporary style which plays with established codes, a creative universe where elegance rules.',
                      style: TextStyle(overflow: TextOverflow.clip),
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
    );
  }
}
