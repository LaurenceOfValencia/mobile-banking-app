import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_banking_app/splash_screen.dart';
import 'package:mobile_banking_app/transfer_money_confirmation_page.dart';

import 'dashboard.dart';

class TransferMoneyScreen extends StatelessWidget {
  List<int> balance;
  TransferMoneyScreen(this.balance, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                    MaterialPageRoute(builder: (context) => Dashboard(balance)),
                  );
                }, //link back to prev page
              );
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Row(
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Step 1 of 3',
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
                      'Fill in the Details',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: const <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: Text(
                        'Transfer from :',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              /*
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildCreditCard(
                        color: const Color(0xFFffa047),
                        cardExpiration: "08/2022",
                        cardHolder: "Admin1",
                        cardNumber: "XXXX XXXX XXXX 9742"),
                    _buildCreditCard(
                        color: const Color(0xFF0029f5),
                        cardExpiration: "08/2022",
                        cardHolder: "Admin2",
                        cardNumber: "XXXX XXXX XXXX 1373"),
                  ],
                ),
              ),
              */
              Container(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Theme(
                      data:
                          Theme.of(context).copyWith(canvasColor: Colors.white),
                      child: Container(
                        color: Colors.white,
                        child: DropdownButton<String>(
                          items:
                              <String>['A', 'B', 'C', 'D'].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (_) {},
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Color(0xFFFFD60A),
                indent: 20,
                endIndent: 20,
              ),
              // ignore: prefer_const_constructors
              Column(
                children: const <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: Text(
                        'Transfer Amount',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const <Widget>[
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        cursorColor: Color(0xff003566),
                        decoration: InputDecoration(
                          labelText: 'Amount',
                          labelStyle: TextStyle(color: Color(0xFF003566)),
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: const <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: Text(
                        'Send to',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  cursorColor: Color(0xff003566),
                  maxLength: 12,
                  decoration: InputDecoration(
                    labelText: 'Account Number',
                    labelStyle: TextStyle(color: Color(0xFF003566)),
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const TransferMoneyConfirmation())),
                child: const Text('Proceed'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Card _buildCreditCard(
      {@required Color? color,
      @required String? cardNumber,
      @required String? cardHolder,
      @required String? cardExpiration}) {
    return Card(
      elevation: 4.0,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Container(
        height: 200,
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _buildLogosBlock(),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                '$cardNumber',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontFamily: 'CourrierPrime'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _buildDetailsBlock(
                  label: 'CARDHOLDER',
                  value: cardHolder,
                ),
                _buildDetailsBlock(label: 'VALID THRU', value: cardExpiration),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Build the top row containing logos
  Row _buildLogosBlock() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Image.asset(
          "assets/images/contact_less.png",
          height: 20,
          width: 18,
        ),
        Image.asset(
          "assets/images/mastercard.png",
          height: 50,
          width: 50,
        ),
      ],
    );
  }

// Build Column containing the cardholder and expiration information
  Column _buildDetailsBlock(
      {@required String? label, @required String? value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '$label',
          style: const TextStyle(
              color: Colors.grey, fontSize: 9, fontWeight: FontWeight.bold),
        ),
        Text(
          '$value',
          style: const TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
