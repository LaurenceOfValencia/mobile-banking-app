import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[
                Color(0xff3e3e65),
                Color(0xff1b3a4b),
              ],
            ),
          ),
          child: Center(
            child: Image.asset(
              'assets/images/splash_icon.png',
              width: 200,
            ),
          ),
        ),
      ),
    );
  }
}
