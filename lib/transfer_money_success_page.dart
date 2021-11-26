// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mobile_banking_app/transfer_money_screen.dart';

class TransferMoneySuccess extends StatelessWidget {
  const TransferMoneySuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Transfer Money",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
          ),
          elevation: 0,
          backgroundColor: const Color(0xff000814),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            TransferMoneyScreen(balance)), //widget.balance
                  );
                }, //link back to prev page
              );
            },
          )),
      body: Column(),
    );
  }
}
