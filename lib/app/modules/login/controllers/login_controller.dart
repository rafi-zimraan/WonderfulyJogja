// ignore_for_file: unnecessary_overrides
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailC =
      TextEditingController(text: 'testing@gmail.com');
  TextEditingController passC = TextEditingController(text: '123456');

  @override
  void onClose() {
    emailC.dispose();
    passC.dispose();
    super.onClose();
  }

  @override
  void onReady() {
    super.onReady();
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  void increment() => count.value++;
}
