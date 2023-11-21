import 'package:flutter/material.dart';
import 'package:furniturwisata/app/modules/login/widgets/text_field.dart';
import 'package:furniturwisata/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CustomTextField(
              text: 'Email',
              icon: Icons.email,
              isPasswordType: false,
              controller: controller.emailC,
            ),
            const SizedBox(height: 10), // Kurangi ukuran SizedBox
            CustomTextField(
              text: 'Kata sandi',
              icon: Icons.lock,
              isPasswordType: true,
              controller: controller.passC,
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text('Lupa Password?'),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.offNamed(Routes.HOME);
              },
              child: const Text('Masuk'),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text("Belum punya akun? "),
                TextButton(
                  onPressed: () {},
                  child: const Text('Registrasi'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
