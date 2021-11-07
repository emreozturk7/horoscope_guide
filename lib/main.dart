import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horoscope_guide/model/user_model.dart';
import 'package:horoscope_guide/routes/app_pages.dart';
import 'package:horoscope_guide/utils/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(
        const Duration(seconds: 0),
      ),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return GetMaterialApp(
            initialRoute: Routes.loginView,
            title: 'Horoscope Guide',
            getPages: AppPages.routes,
          );
        }
        return FutureBuilder(
          builder: (context, snapshot) => SplashScreen(),
        );
      },
    );
  }
}
