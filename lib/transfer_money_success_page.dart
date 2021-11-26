// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TransferMoneySuccess extends StatelessWidget {
  const TransferMoneySuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Money transfer Success',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.center,
              child: ElevatedButton(onPressed: () {}, child: Text('Back')),
            ),
          ],
        ),
      ),
    );
  }
}
