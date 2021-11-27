// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:mobile_banking_app/login_screen.dart';
import 'package:mobile_banking_app/services_screen.dart';
import 'package:mobile_banking_app/splash_screen.dart';
import 'package:mobile_banking_app/transfer_money_screen.dart';

class Dashboard extends StatefulWidget {
  List<double> balance;
  Dashboard(this.balance, {Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Good day Admin,\nWelcome Back!",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    LoginScreen(widget.balance)),
                          );
                        },
                        icon: const Icon(
                          Icons.logout,
                          color: Color(0xffffffff),
                        )),
                  ]),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 170,
                    padding: const EdgeInsets.symmetric(
                        vertical: 40, horizontal: 10),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: RichText(
                          text: TextSpan(
                              text: "Total Balance:\n",
                              style: const TextStyle(
                                  fontSize: 13, color: Color(0x77ffffff)),
                              children: <TextSpan>[
                            TextSpan(
                                text: "Php " +
                                    (widget.balance[0] + widget.balance[1])
                                        .toString(),
                                style: const TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                )),
                          ])),
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(45)),
                      color: Color(0x99003566),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                ),
                Expanded(
                  child: Container(
                    height: 170,
                    padding: const EdgeInsets.symmetric(
                        vertical: 40, horizontal: 10),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: RichText(
                          text: TextSpan(
                              text: "Expenditure Report:\n",
                              style: const TextStyle(
                                  fontSize: 13, color: Color(0x77ffffff)),
                              children: <TextSpan>[
                            TextSpan(
                              text: "Php " + widget.balance[2].toString(),
                              style: const TextStyle(
                                  fontSize: 25, color: Colors.white),
                            ),
                          ])),
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(45)),
                      color: Color(0x99003566),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(40),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Ink(
                      decoration: const ShapeDecoration(
                        color: Color(0xffffd60a),
                        shape: CircleBorder(),
                      ),
                      // ignore: avoid_print
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    TransferMoneyScreen(balance)),
                          );
                        },
                        icon: const Icon(Icons.swap_horiz),
                        tooltip: "Tranfer Money",
                      ),
                    ),
                  ),
                  Expanded(
                    child: Ink(
                      decoration: const ShapeDecoration(
                        color: Color(0xffffd60a),
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ServicesScreen(widget.balance)),
                          );
                        },
                        icon: const Icon(Icons.receipt_long),
                        tooltip: "Pay Bills",
                      ),
                    ),
                  ),
                  Expanded(
                    child: Ink(
                      decoration: const ShapeDecoration(
                        color: Color(0xffffd60a),
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        onPressed: () {
                          const snackBar = SnackBar(
                              content: Text(
                                  "This functionality is not available for this demo"));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        icon: const Icon(Icons.analytics),
                        tooltip: "Analytics",
                      ),
                    ),
                  ),
                  Expanded(
                    child: Ink(
                      decoration: const ShapeDecoration(
                        color: Color(0xffffd60a),
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        onPressed: () {
                          const snackBar = SnackBar(
                              content: Text(
                                  "This functionality is not available for this demo"));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        icon: const Icon(Icons.account_circle),
                        tooltip: "Profile",
                      ),
                    ),
                  )
                ],
              ),
            ),
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
            Container(
              height: 120,
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ElevatedButton(
                onPressed: () {
                  const snackBar = SnackBar(
                      content: Text(
                          "This functionality is not available for this demo"));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Add a card",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Icon(
                        Icons.add_rounded,
                        color: Color(0xffFFD60A),
                      )
                    ],
                  ),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)))),
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xff001d3d)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
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
Column _buildDetailsBlock({@required String? label, @required String? value}) {
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
