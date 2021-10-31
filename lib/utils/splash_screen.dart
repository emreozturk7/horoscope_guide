import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: 350,
            height: 350,
            child: Lottie.asset('assets/lottie/loading.json'),
          ),
        ),
      ),
    );
  }
}
