// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mobile_banking_app/splash_screen.dart';
import 'package:mobile_banking_app/transfer_money_screen.dart';
import 'package:mobile_banking_app/transfer_money_success.dart';

class TransferMoneyConfirmation extends StatelessWidget {
  List<double> balance;
  List<String> transactionDetails;
  TransferMoneyConfirmation(this.balance, this.transactionDetails, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF000814),
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
                      builder: (context) => TransferMoneyScreen(balance)),
                );
              }, //link back to prev page
            );
          },
        ),
        title: const Text(
          "Transfer Money",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: Row(
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Step 2 of 3',
                      style: TextStyle(
                        color: Color(0xFFFFD60A),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 2,
                    ),
                    child: Text(
                      'Confirmation',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 190,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: ListView(
                padding: const EdgeInsets.all(10),
                children: <Widget>[
                  Container(
                    height: 50,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Transfer From',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        )),
                  ),
                  Container(
                    height: 50,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Card Used: Card' + transactionDetails[0])),
                  ),
                  Container(
                    height: 50,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Current Balance: ' +
                            balance[int.parse(transactionDetails[0]) - 1]
                                .toString())),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Color(0xFFFFD60A),
              indent: 20,
              endIndent: 20,
              thickness: 1,
            ),
            Container(
              height: 190,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: ListView(
                padding: const EdgeInsets.all(10),
                children: <Widget>[
                  Container(
                    height: 50,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Transfer To ',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        )),
                  ),
                  Container(
                    height: 50,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child:
                            Text('Account Number: ' + transactionDetails[1])),
                  ),
                  Container(
                    height: 50,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Amount: Php' + transactionDetails[2])),
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  balance[int.parse(transactionDetails[0]) - 1] -=
                      double.parse(transactionDetails[2]);
                  balance[2] += double.parse(transactionDetails[2]);
                  balance[3]++;

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            TransferMoneySuccess(balance, transactionDetails)),
                  );
                },
                child: Text(
                  'Confirm',
                ))
          ],
        ),
      ),
    );
  }
}
