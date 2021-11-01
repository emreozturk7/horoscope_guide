import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF01122C),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: Image.asset(
                'assets/horoscopes/horoscope.png',
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              flex: 2,
              child: Lottie.asset(
                'assets/lottie/loading.json',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
