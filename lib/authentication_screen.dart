// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 200, horizontal: 70),
        child: Column(
          children: [
            Image.asset('assets/images/splash_icon.png'),
            ElevatedButton.icon(
              icon: const Icon(
                Icons.person,
                color: Colors.yellow,
                size: 25,
              ),
              onPressed: () {},
              label: const Text('Login'),
              style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF003566),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5.0),
                  )),
            ),
            ElevatedButton.icon(
              icon: const Icon(
                Icons.qr_code,
                color: Colors.yellow,
                size: 25,
              ),
              onPressed: () {},
              label: const Text('QR Code Scanner'),
              style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF003566),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5.0),
                  )),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
      ),
    );
  }
}
