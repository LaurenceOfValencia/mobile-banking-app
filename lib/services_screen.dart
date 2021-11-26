// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:mobile_banking_app/billing_screen.dart';

class ServicesScreen extends StatelessWidget {
  List<int> balance;
  ServicesScreen(this.balance, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff003566),
        actions: const <Widget>[
          Text("Service Payment", textAlign: TextAlign.center)
        ],
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          Container(
            color: const Color(0xff666666),
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
        ],
      ),
    );
  }
}

void pickMerchant(int service, List<int> balance, BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => BillingScreen(service, balance)),
  );
}
