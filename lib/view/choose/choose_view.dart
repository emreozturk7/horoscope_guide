import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horoscope_guide/routes/app_pages.dart';

class ChooseView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('LEO'),
        backgroundColor: const Color(0xFF01122C),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/horoscopes/leo.jpg'),
            SizedBox(height: deviceSize.height / 50),
            const Text('LEO'),
            SizedBox(height: deviceSize.height / 50),
            const Text('24 July - 23 August'),
            SizedBox(height: deviceSize.height / 50),
            buttonView(
              deviceSize,
              'GENERAL INFORMATION',
              Icons.male,
              deviceSize.height / 20,
              deviceSize.width / 1.75,
            ),
            SizedBox(height: deviceSize.height / 50),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buttonView(
                    deviceSize,
                    'MALE     ',
                    Icons.male,
                    deviceSize.height / 20,
                    deviceSize.width / 3,
                  ),
                  buttonView(
                    deviceSize,
                    'FEMALE   ',
                    Icons.female,
                    deviceSize.height / 20,
                    deviceSize.width / 3,
                  ),
                ],
              ),
            ),
            SizedBox(height: deviceSize.height / 50),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buttonView(
                    deviceSize,
                    'POSITIVE ',
                    Icons.add,
                    deviceSize.height / 20,
                    deviceSize.width / 3,
                  ),
                  buttonView(
                    deviceSize,
                    'NEGATIVE ',
                    Icons.clear,
                    deviceSize.height / 20,
                    deviceSize.width / 3,
                  ),
                ],
              ),
            ),
            SizedBox(height: deviceSize.height / 50),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buttonView(
                    deviceSize,
                    'RISING   ',
                    Icons.call_made,
                    deviceSize.height / 20,
                    deviceSize.width / 3,
                  ),
                  buttonView(
                    deviceSize,
                    'LOVE LIFE',
                    Icons.local_airport_rounded,
                    deviceSize.height / 20,
                    deviceSize.width / 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

InkWell buttonView(Size deviceSize, String buttonName, IconData icon,
    double height, double width) {
  return InkWell(
    onTap: () => Get.toNamed(Routes.detailView),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 1,
          ),
        ],
      ),
      height: height,
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(icon),
          SizedBox(width: deviceSize.width / 50),
          Text(buttonName),
        ],
      ),
    ),
  );
}
