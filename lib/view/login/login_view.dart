import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horoscope_guide/view/login/login_controller.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final LoginController _controller = Get.put(LoginController());
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login View'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: SizedBox(
                height: deviceSize.height / 10,
                width: deviceSize.width / 1.5,
                child: TextField(
                  controller: _controller.emailCtrl,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: SizedBox(
                height: deviceSize.height / 10,
                width: deviceSize.width / 1.5,
                child: TextField(
                  controller: _controller.passwordCtrl,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
            ),
            ElevatedButton(
              child: const Text(
                'SIGN IN',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
              onPressed: () => _controller.signIn(),
            ),
          ],
        ),
      ),
    );
  }
}
