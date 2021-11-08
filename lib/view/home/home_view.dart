import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horoscope_guide/routes/app_pages.dart';
import 'package:horoscope_guide/view/home/home_controller.dart';

class HomeView extends StatelessWidget {
  final HomeController _controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async => await FirebaseAuth.instance.signOut(),
            icon: Icon(Icons.add),
          ),
        ],
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
          padding: const EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              ElevatedButton(
                child: const Text(
                  'What is my horoscope?',
                ),
                onPressed: () => Get.toNamed(Routes.whichHoroscope),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              Row(
                children: [
                  buildHoroscopeCard(
                    context,
                    'ARIES',
                    '21 March - 20 April',
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width / 50),
                  buildHoroscopeCard(
                    context,
                    'TAURUS',
                    '21 April - 21 May',
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width / 50),
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
                  SizedBox(width: MediaQuery.of(context).size.width / 50),
                  buildHoroscopeCard(
                    context,
                    'LEO',
                    '24 July - 23 August',
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width / 50),
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
                  SizedBox(width: MediaQuery.of(context).size.width / 50),
                  buildHoroscopeCard(
                    context,
                    'SCORPIO',
                    '24 October - 22 November',
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width / 50),
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
                  SizedBox(width: MediaQuery.of(context).size.width / 50),
                  buildHoroscopeCard(
                    context,
                    'AQUARIUS',
                    '21 January - 19 February',
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width / 50),
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
            width: MediaQuery.of(context).size.width / 3.5,
            height: MediaQuery.of(context).size.height / 11,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/horoscopes/${horoscope.toLowerCase()}.png',
                ),
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
              fontSize: 15,
            ),
          ),
          Text(
            date,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 7.5),
          ),
        ],
      ),
    );
  }
}
