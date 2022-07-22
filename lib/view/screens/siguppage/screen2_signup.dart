import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../widgets/background_image.dart';
import '../widgets/widgets.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CupertinoColors.systemGrey5,
        appBar: kingsman,
        body: SafeArea(
            child: Stack(
          children: [
            const BackgroundImage(
                image:
                    'https://t3.ftcdn.net/jpg/03/67/38/78/360_F_367387846_OKdglMdC8NSHIaW65XUoiVfTjErAcOdr.jpg'),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Signup Now',
                  style: GoogleFonts.lora(
                    textStyle: const TextStyle(
                      color: CupertinoColors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
                kheight20,
                CupertinoTextFormFieldRow(
                  placeholder: 'Enter your Name',
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: CupertinoColors.white,
                      border: Border.all(color: CupertinoColors.white)),
                ),
                kheight20,
                CupertinoTextFormFieldRow(
                  placeholder: 'Enter your Email',
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: CupertinoColors.white,
                      border: Border.all(color: CupertinoColors.white)),
                ),
                kheight20,
                CupertinoTextFormFieldRow(
                  placeholder: 'Enter your Age',
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: CupertinoColors.white,
                      border: Border.all(color: CupertinoColors.white)),
                ),
                kheight20,
                CupertinoTextFormFieldRow(
                  placeholder: 'Enter your Password',
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: CupertinoColors.white,
                      border: Border.all(color: CupertinoColors.white)),
                ),
                kheight20,
                CupertinoTextFormFieldRow(
                  placeholder: ' confim your Password',
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: CupertinoColors.white,
                      border: Border.all(color: CupertinoColors.white)),
                ),
                kheight20,
                CupertinoButton(
                  color: const Color.fromARGB(147, 227, 237, 229),
                  onPressed: () {},
                  child: const Text(
                    "Register Now",
                    style: TextStyle(color: CupertinoColors.white),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Do you have an account?',
                      style: TextStyle(color: CupertinoColors.white),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(color: CupertinoColors.activeBlue),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        )));
  }
}
