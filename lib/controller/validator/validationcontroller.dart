import 'package:get/get.dart';

class ValidationController extends GetxController {
  var emailController = '';
  var passController = '';
  var phonController = '';
  var nameController = '';
  var email = false.obs;
  var pass = false.obs;
  var phone = false.obs;
  var names = false.obs;

  mailValidation(String mail) {
    if (!GetUtils.isEmail(mail)) {
      email.value = true;
    } else {
      email.value = false;

      emailController = mail;
    }
  }

  passwordValidation(String password) {
    if (password.length < 6) {
      pass.value = true;
    } else {
      pass.value = false;
      passController = password;
    }
  }

  nameValidation(String name) {
    if (!GetUtils.isUsername(name)) {
      names.value = true;
    } else {
      names.value = false;
      nameController = name;
    }
  }

  mobileValidation(String mobile) {
    if (!GetUtils.isPhoneNumber(mobile)) {
      phone.value = true;
    } else {
      phone.value = false;
      phonController = mobile;
    }
  }
}
