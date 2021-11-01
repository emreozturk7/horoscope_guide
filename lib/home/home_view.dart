import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horoscope_guide/home/home_controller.dart';

class HomeView extends StatelessWidget {
  final HomeController _controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF01122C),
        title: const Text(
          'Horoscope Guide',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Container(
          color: const Color(0xFF01122C),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  buildHoroscopeCard(
                    context,
                    'aries',
                    '21 March - 20 April',
                  ),
                  buildHoroscopeCard(
                    context,
                    'taurus',
                    '21 April - 21 May',
                  ),
                  buildHoroscopeCard(
                    context,
                    'gemini',
                    '22 May - 21 June',
                  ),
                ],
              ),
              SizedBox(height: 24),
              Row(
                children: [
                  buildHoroscopeCard(
                    context,
                    'cancer',
                    '22 June - 23 July',
                  ),
                  buildHoroscopeCard(
                    context,
                    'leo',
                    '24 July - 23 August',
                  ),
                  buildHoroscopeCard(
                    context,
                    'virgo',
                    '24 August - 23 September',
                  ),
                ],
              ),
              SizedBox(height: 24),
              Row(
                children: [
                  buildHoroscopeCard(
                    context,
                    'libra',
                    '24 September - 23 October',
                  ),
                  buildHoroscopeCard(
                    context,
                    'scorpio',
                    '24 October - 22 November',
                  ),
                  buildHoroscopeCard(
                    context,
                    'sagittarius',
                    '23 November - 22 December',
                  ),
                ],
              ),
              SizedBox(height: 24),
              Row(
                children: [
                  buildHoroscopeCard(
                    context,
                    'capricorn',
                    '23 December - 20 January',
                  ),
                  buildHoroscopeCard(
                    context,
                    'aquarius',
                    '21 January - 19 February',
                  ),
                  buildHoroscopeCard(
                    context,
                    'pisces',
                    '20 February - 21 March',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  InkWell buildHoroscopeCard(
      BuildContext context, String horoscope, String date) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.height / 10,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/horoscopes/$horoscope.jpg'),
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(25.0),
              ),
            ),
          ),
          Text(
            date,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 8,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
