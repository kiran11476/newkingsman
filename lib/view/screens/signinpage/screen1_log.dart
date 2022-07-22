import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../../controller/cubit/emailcontoller/emailcontroller.dart';
import '../homepage/homepage.dart';
import '../widgets/background_image.dart';

late Size size;

class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final loginController = Get.put(LogInController());

  get kingsman => null;

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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Text(
                        'Hey ,\nLogin Now.',
                        style: GoogleFonts.dosis(
                          textStyle: TextStyle(
                            color: Theme.of(context).canvasColor,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: CupertinoTextFormFieldRow(
                      controller: emailController,
                      placeholder: 'Enter your Email',
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: CupertinoColors.white,
                          border: Border.all(color: CupertinoColors.white)),
                    ),
                  ),
                  CupertinoTextFormFieldRow(
                    controller: passwordController,
                    obscureText: true,
                    placeholder: 'Enter your password',
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        color: CupertinoColors.white,
                        border: Border.all(
                            color: Theme.of(context).backgroundColor)),
                  ),
                  CupertinoButton(
                    color: const Color.fromARGB(147, 227, 237, 229),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (ctx) => const HomePage()));
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(color: CupertinoColors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Do you have an account?\t',
                        style: TextStyle(color: CupertinoColors.white),
                      ),
                      TextButton(
                        onPressed: () {
                          loginController.userSignin(
                              emailController.text.trim(),
                              passwordController.text.trim());
                        },
                        child: const Text(
                          'Sign In',
                          style: TextStyle(color: CupertinoColors.activeBlue),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
