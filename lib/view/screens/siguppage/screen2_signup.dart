import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:newkings/controller/eamil/emailcontoller/emailcontroller.dart';

import '../../../controller/validator/validationcontroller.dart';
import '../widgets/background_image.dart';
import '../widgets/widgets.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

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
            SingleChildScrollView(
              child: Column(
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
                    validator: (name) {
                      validController.nameValidation(name!);
                    },
                    controller: _nameController,
                    placeholder: 'Enter your Name',
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        color: CupertinoColors.white,
                        border: Border.all(color: CupertinoColors.white)),
                  ),
                  kheight20,
                  CupertinoTextFormFieldRow(
                    validator: (mail) {
                      validController.mailValidation(mail!);
                    },
                    controller: _mailController,
                    placeholder: 'Enter your Email',
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        color: CupertinoColors.white,
                        border: Border.all(color: CupertinoColors.white)),
                  ),
                  kheight20,
                  CupertinoTextFormFieldRow(
                    validator: (mobile) {
                      validController.mobileValidation(mobile!);
                    },
                    keyboardType: TextInputType.phone,
                    controller: _mobileController,
                    placeholder: 'Enter your Number',
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        color: CupertinoColors.white,
                        border: Border.all(color: CupertinoColors.white)),
                  ),
                  kheight20,
                  CupertinoTextFormFieldRow(
                    validator: (password) {
                      validController.passwordValidation(password!);
                    },
                    controller: _passwordController,
                    placeholder: 'Enter your Password',
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        color: CupertinoColors.white,
                        border: Border.all(color: CupertinoColors.white)),
                  ),
                  kheight20,
                  CupertinoTextFormFieldRow(
                    validator: (password) {
                      validController.passwordValidation(password!);
                    },
                    controller: _confirmPasswordController,
                    placeholder: ' confim your Password',
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        color: CupertinoColors.white,
                        border: Border.all(color: CupertinoColors.white)),
                  ),
                  kheight20,
                  CupertinoButton(
                    color: const Color.fromARGB(147, 227, 237, 229),
                    onPressed: signupButtonPressed,
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
              ),
            )
          ],
        )));
  }

  void signupButtonPressed() {
    if (_nameController.text.trim().isEmpty ||
        _confirmPasswordController.text.trim().isEmpty ||
        _mailController.text.trim().isEmpty ||
        _passwordController.text.trim().isEmpty ||
        _mobileController.text.trim().isEmpty) {
      Get.snackbar(
          snackPosition: SnackPosition.BOTTOM,
          'fill the field',
          'Every Fields Are Required',
          colorText: Colors.red);
      return;
    } else {
      authControll.signupUser(
        _nameController.text.trim(),
        _mobileController.text.trim(),
        _mailController.text.trim(),
        _passwordController.text.trim(),
        _confirmPasswordController.text.trim(),
      );
    }
  }

  final authControll = Get.put(LogInController());
  final validController = Get.put(ValidationController());
  final _nameController = TextEditingController();
  final _mobileController = TextEditingController();
  final _mailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
}
