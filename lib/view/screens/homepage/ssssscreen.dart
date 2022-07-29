import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/product_cont/productcrontroller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        const CarouselHii(
          width: 300,
          reverse: true,
          enlaegre: true,
          padding: EdgeInsets.all(10.0),
          bools: true,
        ),
        GetBuilder<ProductController>(
            init: ProductController(),
            builder: (controller) {
              return controller.recieved == null
                  ? const Center(child: CircularProgressIndicator())
                  : GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 20,
                      ),
                      padding: const EdgeInsets.all(10),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: controller.recieved!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            color: const Color.fromARGB(255, 255, 254, 254),
                            height: 100,
                            width: 50,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Image(
                                      image: NetworkImage(
                                          "http://10.0.2.2:3000/uploads/${controller.recieved![index].images![0].filename}"),
                                    ),
                                    // Positioned(
                                    //   right: 10,
                                    //   child: IconButton(
                                    //       onPressed: () {},
                                    //       icon: const Icon(Icons.favorite)),
                                    // )
                                  ],
                                ),
                                Text(
                                  controller.recieved![index].productName,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text(
                                  controller.recieved![index].productPrice,
                                  style: const TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                // const Text(
                                //   'Price rs',
                                //   style: TextStyle(fontWeight: FontWeight.bold),
                                // ),
                              ],
                            ));
                      });
            })
      ]),
    );
  }
}

class CarouselHii extends StatelessWidget {
  const CarouselHii(
      {Key? key,
      required this.bools,
      required this.padding,
      required this.enlaegre,
      required this.reverse,
      required this.width})
      : super(key: key);
  final bool bools;
  final EdgeInsetsGeometry padding;
  final bool enlaegre;
  final bool reverse;
  final double width;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: bools,
        enlargeCenterPage: enlaegre,
        enableInfiniteScroll: reverse,
      ),
      items: [
        Padding(
          padding: padding,
          child: Container(
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxlrnXjcUM2OmKWYj8p2dQJCf2lsHM6_wmXQ&usqp=CAU'),
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

  






       //     ElevatedButton(
        //       style: ButtonStyle(
        //         backgroundColor: MaterialStateProperty.all(
        //             const Color.fromARGB(208, 64, 36, 125)),
        //       ),
        //       onPressed: () {},
        //       child: const Text('Shoes'),
        //     ),
        //     ElevatedButton(
        //       style: ButtonStyle(
        //         backgroundColor: MaterialStateProperty.all(
        //             const Color.fromARGB(208, 64, 36, 125)),
        //       ),
        //       onPressed: () {},
        //       child: const Text('Glasses'),
        //     ),
        //     ElevatedButton(
        //       style: ButtonStyle(
        //         backgroundColor:
        //             MaterialStateProperty.all(Color.fromARGB(208, 64, 36, 125)),
        //       ),
        //       onPressed: () {},
        //       child: const Text('Watche'),
        //     ),
        //   ],
        // ),
        // SizedBox(
        //   width: double.infinity,
        //   height: 280,
        //   child: ListView.builder(
        //     shrinkWrap: true,
        //     scrollDirection: Axis.horizontal,
        //     itemCount: 15,
        //     itemBuilder: (BuildContext context, int index) => Padding(
        //       padding: const EdgeInsets.all(10.0),
        //       child: Card(
        //         color: Color.fromARGB(17, 142, 142, 147),
        //         shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(15.0)),
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //           children: [
        //             SizedBox(
        //                 height: 100,
        //                 width: 130,
        //                 child: Stack(
        //                   children: [
        //                     const Image(
        //                       image: NetworkImage(
        //                           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTj7Vmct8uCO4MTxe6SPOTUG3BvJ9ghxq-fxw&usqp=CAU'),
        //                     ),
        //                     Positioned(
        //                       left: 80,
        //                       child: IconButton(
        //                           onPressed: () {},
        //                           icon: const Icon(Icons.favorite)),
        //                     )
        //                   ],
        //                 )),
        //             const Text(
        //               'Shoes Name',
        //               style: TextStyle(fontWeight: FontWeight.bold),
        //             ),
        //             const Text(
        //               'Price rs 30',
        //               style: TextStyle(fontWeight: FontWeight.bold),
        //             ),
        //             const SizedBox(
        //               height: 10,
        //             ),
        //             const SizedBox(
        //               height: 30,
        //               width: 150,
        //               child: Text(
        //                 'Refresh your style with a new pair of mens shoes from AJIO. Our range has everything you need to rack up fashion points – cool sneakers, classy Oxfords, charming loafers and rugged boots. Go on and look through to find the right fit for you! ',
        //                 style: TextStyle(
        //                     fontWeight: FontWeight.bold,
        //                     overflow: TextOverflow.ellipsis),
        //               ),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.only(top: 20),
        //               child: Container(
        //                 alignment: Alignment.center,
        //                 width: 150,
        //                 height: 50,
        //                 color: const Color.fromARGB(255, 102, 65, 10),
        //                 child: Text(
        //                   'Add to Cart',
        //                   style: GoogleFonts.roboto(
        //                     textStyle: const TextStyle(
        //                       color: CupertinoColors.white,
        //                       fontSize: 20,
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        // ),