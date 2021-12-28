import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:tasbe7/Screens/hometab.dart';
import 'Screens/homescreen.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'وُذَڪر',
debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Center(
          child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset('assets/images/splashone.jpg',fit: BoxFit.cover,)),
        ),
        nextScreen:  const HomeTab(),
        duration:5000 ,
        splashIconSize: double.infinity,
        splashTransition: SplashTransition.scaleTransition,
        pageTransitionType: PageTransitionType.leftToRight,
      ),
    );
  }
}
