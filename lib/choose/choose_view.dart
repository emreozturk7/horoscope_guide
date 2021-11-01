import 'package:flutter/material.dart';

class ChooseView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LEO'),
        backgroundColor: const Color(0xFF01122C),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/horoscopes/leo.jpg'),
            const Text('LEO'),
            const Text('24 July - 23 August'),
            InkWell(
              onTap: () {},
              child: Container(
                height: 100,
                width: 100,
                child: Row(
                  children: const [
                    Icon(Icons.female),
                    Text('FEMALE'),
                  ],
                ),
              ),
            ),
            /*ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(100, 50),
                primary: const Color(0xFF01122C),
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text('GENERAL INFORMATION'),
              onPressed: () {},
            ),*/
          ],
        ),
      ),
    );
  }
}
