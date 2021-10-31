import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horoscope_guide/home/home_controller.dart';

class HomeView extends StatelessWidget {
  final HomeController _controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Text('HomeView working'),
        ),
      ),
    );
  }
}
