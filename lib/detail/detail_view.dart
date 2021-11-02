import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horoscope_guide/detail/detail_controller.dart';

class DetailView extends StatelessWidget {
  final DetailController _controller = Get.put(DetailController());

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF01122C),
      ),
      body: Center(
        child: Container(
          color: const Color(0xFF01122C),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          'LEO',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '23 June - 23 August',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/horoscopes/leo.png',
                      height: deviceSize.height / 2,
                      width: deviceSize.width / 2,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: const [
                    Text(
                      'LEO',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      'LEO MALE IS;',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.5,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        'This is a man who falls in love in an incredibly warm and cuddly way. '
                        'Just think of a tamed lion, purring and making room to sit in somebody’s lap.'
                        ' Love will only strengthen his ego and he will truly enjoy the chase of his “prey”. '
                        'Since he belongs to fixed signs of the zodiac, he might have trouble letting go of '
                        'relationships that are outdated, holding on to shreds of emotion instead of searching for a new partner.'
                        ' This can take away a lot of his energy and he should always be free to feel the same warm and cuddly sensation '
                        'that makes his heart jump. He is the king after all, and the true king has the biggest heart.',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
