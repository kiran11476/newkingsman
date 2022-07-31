import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
