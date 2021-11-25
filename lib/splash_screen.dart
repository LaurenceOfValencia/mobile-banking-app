import 'dart:async';
import 'package:mobile_banking_app/authentication_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const AuthenticationScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
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
          ],
        ),
      ),
    );
  }
}
