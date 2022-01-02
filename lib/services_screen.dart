// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mobile_banking_app/billing_screen.dart';
import 'package:mobile_banking_app/dashboard.dart';

class ServicesScreen extends StatelessWidget {
  List<double> balance;
  ServicesScreen(this.balance, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF000814),
          title: Text(
            'Bills Payment',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
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
                    MaterialPageRoute(builder: (context) => Dashboard(balance)),
                  );
                },
              );
            },
          )),
      body: Container(
        color: Color(0xFF000814),
        child: GridView.count(
          crossAxisCount: 3,
          children: [
            Card(
              color: Color(0xffFFD60A),
              //Light
              elevation: 8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  TextButton(
                    onPressed: () => {pickMerchant(0, balance, context)},
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Icon(Icons.lightbulb,
                            size: 80, color: Color(0xff003566)),
                        Text(
                          "Light",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              color: Color(0xffFFD60A),
              //Water
              elevation: 8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  TextButton(
                    onPressed: () => {pickMerchant(1, balance, context)},
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Icon(
                          Icons.water_damage_sharp,
                          color: Color(0xff001D3D),
                          size: 80,
                        ),
                        Text(
                          "Water",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              color: Color(0xffFFD60A),
              //Cable
              elevation: 8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  TextButton(
                    onPressed: () => {pickMerchant(2, balance, context)},
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Icon(Icons.monitor, size: 80, color: Color(0xff003566)),
                        Text(
                          "Cable/Internet",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              color: Color(0xffFFD60A),
              //Telecoms
              elevation: 8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  TextButton(
                    onPressed: () => {pickMerchant(3, balance, context)},
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Icon(
                          Icons.perm_phone_msg,
                          color: Color(0xff001D3D),
                          size: 80,
                        ),
                        Text(
                          "Telecoms",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              color: Color(0xffFFD60A),
              //Credit Cards
              elevation: 8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  TextButton(
                    onPressed: () => {pickMerchant(4, balance, context)},
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Icon(Icons.credit_card,
                            size: 80, color: Color(0xff003566)),
                        Text(
                          "Credit Cards",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              color: Color(0xffFFD60A),
              //Loans
              elevation: 8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  TextButton(
                    onPressed: () => {pickMerchant(5, balance, context)},
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Icon(
                          Icons.real_estate_agent,
                          color: Color(0xff001D3D),
                          size: 80,
                        ),
                        Text(
                          "Loans",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              color: Color(0xffFFD60A),
              //Government
              elevation: 8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  TextButton(
                    onPressed: () => {pickMerchant(6, balance, context)},
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Icon(Icons.military_tech,
                            size: 80, color: Color(0xff003566)),
                        Text(
                          "Government",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              color: Color(0xffFFD60A),
              //Insurance
              elevation: 8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  TextButton(
                    onPressed: () => {pickMerchant(7, balance, context)},
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Icon(
                          Icons.health_and_safety,
                          color: Color(0xff001D3D),
                          size: 80,
                        ),
                        Text(
                          "Insurance",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              color: Color(0xffFFD60A),
              //Transportation
              elevation: 8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  TextButton(
                    onPressed: () => {pickMerchant(8, balance, context)},
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Icon(Icons.local_taxi,
                            size: 80, color: Color(0xff003566)),
                        Text(
                          "Transportation",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              color: Color(0xffFFD60A),
              //Real Estate
              elevation: 8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  TextButton(
                    onPressed: () => {pickMerchant(9, balance, context)},
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Icon(
                          Icons.house,
                          color: Color(0xff001D3D),
                          size: 80,
                        ),
                        Text(
                          "Real Estate",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              color: Color(0xffFFD60A),
              //Healthcare
              elevation: 8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  TextButton(
                    onPressed: () => {pickMerchant(8, balance, context)},
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Icon(Icons.medical_services,
                            size: 80, color: Color(0xff003566)),
                        Text(
                          "Healthcare",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              color: Color(0xffFFD60A),
              //Schools
              elevation: 8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  TextButton(
                    onPressed: () => {pickMerchant(9, balance, context)},
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Icon(
                          Icons.book,
                          color: Color(0xff001D3D),
                          size: 80,
                        ),
                        Text(
                          "Schools",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /*
            
            Container(
              color: const Colors.white,
              child: IconButton(
                onPressed: () {
                  pickMerchant(0, balance, context);
                },
                icon: const Icon(Icons.lightbulb,
                    size: 80, color: Color(0xff003566)),
                tooltip: "Electric",
              ),
            ),
            Container(
              color: const Color(0xff666666),
              child: IconButton(
                onPressed: () {
                  pickMerchant(1, balance, context);
                },
                icon: const Icon(Icons.water_damage_sharp,
                    size: 80, color: Color(0xff001D3D)),
                tooltip: "Water",
              ),
            ),
            Container(
              color: const Color(0xff666666),
              child: IconButton(
                onPressed: () {
                  pickMerchant(2, balance, context);
                },
                icon:
                    const Icon(Icons.monitor, size: 80, color: Color(0xff003566)),
                tooltip: "Cable/Internet",
              ),
            ),
            Container(
              color: const Color(0xff666666),
              child: IconButton(
                onPressed: () {
                  pickMerchant(3, balance, context);
                },
                icon: const Icon(Icons.perm_phone_msg,
                    size: 80, color: Color(0xff001D3D)),
                tooltip: "Telecoms",
              ),
            ),
            Container(
              color: const Color(0xff666666),
              child: IconButton(
                onPressed: () {
                  pickMerchant(4, balance, context);
                },
                icon: const Icon(Icons.credit_card,
                    size: 80, color: Color(0xff003566)),
                tooltip: "Credit Cards",
              ),
            ),
            Container(
              color: const Color(0xff666666),
              child: IconButton(
                onPressed: () {
                  pickMerchant(5, balance, context);
                },
                icon: const Icon(Icons.real_estate_agent,
                    size: 80, color: Color(0xff001D3D)),
                tooltip: "Loans",
              ),
            ),
            Container(
              color: const Color(0xff666666),
              child: IconButton(
                onPressed: () {
                  pickMerchant(6, balance, context);
                },
                icon: const Icon(Icons.military_tech,
                    size: 80, color: Color(0xff003566)),
                tooltip: "Government",
              ),
            ),
            Container(
              color: const Color(0xff666666),
              child: IconButton(
                onPressed: () {
                  pickMerchant(7, balance, context);
                },
                icon: const Icon(Icons.health_and_safety,
                    size: 80, color: Color(0xff001D3D)),
                tooltip: "Insurance",
              ),
            ),
            Container(
              color: const Color(0xff666666),
              child: IconButton(
                onPressed: () {
                  pickMerchant(8, balance, context);
                },
                icon: const Icon(Icons.local_taxi,
                    size: 80, color: Color(0xff003566)),
                tooltip: "Transportation",
              ),
            ),
            Container(
              color: const Color(0xff666666),
              child: IconButton(
                onPressed: () {
                  pickMerchant(9, balance, context);
                },
                icon: const Icon(Icons.house, size: 80, color: Color(0xff001D3D)),
                tooltip: "Real Estate",
              ),
            ),
            Container(
              color: const Color(0xff666666),
              child: IconButton(
                onPressed: () {
                  pickMerchant(10, balance, context);
                },
                icon: const Icon(Icons.medical_services,
                    size: 80, color: Color(0xff003566)),
                tooltip: "Healthcare",
              ),
            ),
            Container(
              color: const Color(0xff666666),
              child: IconButton(
                onPressed: () {
                  pickMerchant(11, balance, context);
                },
                icon: const Icon(Icons.book, size: 80, color: Color(0xff001D3D)),
                tooltip: "Schools",
              ),
            ),
          */
          ],
        ),
      ),
    );
  }
}

void pickMerchant(int service, List<double> balance, BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => BillingScreen(service, balance)),
  );
}
