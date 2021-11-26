import 'package:flutter/material.dart';
import 'package:mobile_banking_app/billing_screen.dart';
import 'package:mobile_banking_app/services_screen.dart';
import 'package:mobile_banking_app/splash_screen.dart';

import 'dashboard.dart';

// ignore: must_be_immutable
class BillPaymentScreen extends StatefulWidget {
  String merchantName;
  List<double> balance;
  BillPaymentScreen(this.merchantName, this.balance,{ Key? key }) : super(key: key);

  @override
  _BillPaymentScreenState createState() => _BillPaymentScreenState();
}

TextEditingController accountNumController = TextEditingController();
TextEditingController accountNameController = TextEditingController();
TextEditingController amountController = TextEditingController();

class _BillPaymentScreenState extends State<BillPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xFF000814),
            title: Text(
              'Confirm',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xffFFC300),
              ),
            ),
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
                          builder: (context) => ServicesScreen(balance)),
                    );
                  }, //link back to prev page
                );
              },
            )),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                widget.merchantName,
                style: const TextStyle(color: Color(0xffffffff), fontSize: 40),
              ),
            ),
            TextField(
              maxLength: 12,
              controller: accountNumController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  fillColor: const Color(0xbb555555),
                  labelText: "Account Number",
                  labelStyle: const TextStyle(color: Color(0xffffd60a))),
              style: const TextStyle(
                color: Color(0xffffffff),
              ),
            ),
            TextField(
              controller: accountNameController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Color(0xbb555555),
                  labelText: "Account Name",
                  labelStyle: TextStyle(color: Color(0xffffd60a))),
              style: TextStyle(
                color: Color(0xffffffff),
              ),
            ),
            TextField(
              controller: amountController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Color(0xbb555555),
                  labelText: "Amount to Pay",
                  labelStyle: TextStyle(color: const Color(0xffffd60a))),
              style: TextStyle(
                color: const Color(0xffffffff),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (int.parse(amountController.text) >
                      balance[0] + balance[1]) {
                  } else {}
                },
                child: const Text("Confirm"))
          ],
        ));
  }
}
