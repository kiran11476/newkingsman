import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bottomsheeet extends StatelessWidget {
  const Bottomsheeet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color.fromARGB(255, 105, 8, 3)),
        height: 50,
        width: double.infinity,
        child: Text(
          "Procced to check Out",
          style: GoogleFonts.lato(
            textStyle:
                TextStyle(fontSize: 20, color: Theme.of(context).canvasColor),
          ),
        ),
      ),
    );
  }
}
