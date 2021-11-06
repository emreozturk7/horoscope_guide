import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horoscope_guide/view/which/which_horoscope_controller.dart';

class WhichHoroscope extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final WhichHoroscopeController _controller =
        Get.put(WhichHoroscopeController());
    var dropDownValue = 'January';
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Which Horoscope',
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                DropdownButton<String>(
                  onChanged: (String? newValue) {
                    dropDownValue = newValue!;
                  },
                  value: dropDownValue,
                  items: <String>[
                    'January',
                    'February',
                    'March',
                    'April',
                    'May',
                    'June',
                    'July',
                    'August',
                    'September',
                    'October',
                    'December',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                SizedBox(width: 20),
                DropdownButton<String>(
                  onChanged: (String? newValue) {
                    dropDownValue = newValue!;
                  },
                  value: 'emre',
                  items: <String>['emre 1']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
