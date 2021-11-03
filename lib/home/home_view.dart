import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horoscope_guide/database.dart';
import 'package:horoscope_guide/home/home_controller.dart';
import 'package:horoscope_guide/routes/app_pages.dart';

class HomeView extends StatelessWidget {
  Database database = Database();
  final HomeController _controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          database.readData();
        },
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xFF01122C),
        title: const Text(
          'Horoscope Guide',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Container(
          //color: const Color(0xFF01122C),
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
                    'ARIES',
                    '21 March - 20 April',
                  ),
                  buildHoroscopeCard(
                    context,
                    'TAURUS',
                    '21 April - 21 May',
                  ),
                  buildHoroscopeCard(
                    context,
                    'GEMINI',
                    '22 May - 21 June',
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  buildHoroscopeCard(
                    context,
                    'CANCER',
                    '22 June - 23 July',
                  ),
                  buildHoroscopeCard(
                    context,
                    'LEO',
                    '24 July - 23 August',
                  ),
                  buildHoroscopeCard(
                    context,
                    'VIRGO',
                    '24 August - 23 September',
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  buildHoroscopeCard(
                    context,
                    'LIBRA',
                    '24 September - 23 October',
                  ),
                  buildHoroscopeCard(
                    context,
                    'SCORPIO',
                    '24 October - 22 November',
                  ),
                  buildHoroscopeCard(
                    context,
                    'SAGITTARIUS',
                    '23 November - 22 December',
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  buildHoroscopeCard(
                    context,
                    'CAPRICORN',
                    '23 December - 20 January',
                  ),
                  buildHoroscopeCard(
                    context,
                    'AQUARIUS',
                    '21 January - 19 February',
                  ),
                  buildHoroscopeCard(
                    context,
                    'PISCES',
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
      onTap: () {
        Get.toNamed(Routes.chooseView);
      },
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.height / 10,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/horoscopes/${horoscope.toLowerCase()}.png'),
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(25.0),
              ),
            ),
          ),
          Text(
            horoscope,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            date,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 8,
            ),
          ),
        ],
      ),
    );
  }
}
