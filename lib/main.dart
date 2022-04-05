import 'package:ecommerce_ui/src/constant/constant.dart';
import 'package:ecommerce_ui/src/splash/splash_screens.dart';
import 'package:ecommerce_ui/src/ui/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flipkart',
      theme: ThemeData(
        primaryColor: const Color(0xff2874F0),
      ),
      routes: <String, WidgetBuilder>{
        splashScreen: (BuildContext context) => const AnimatedSplashScreen(),
        homeScreen: (BuildContext context) => const HomePage(),
      },
      home: const AnimatedSplashScreen(),
    );
  }
}
