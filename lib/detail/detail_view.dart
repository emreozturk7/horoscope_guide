import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horoscope_guide/detail/detail_controller.dart';

class DetailView extends StatelessWidget {
  final DetailController _controller = Get.put(DetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Text('DetailView working'),
        ),
      ),
    );
  }
}
