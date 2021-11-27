// ignore_for_file: must_be_immutable, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mobile_banking_app/services_screen.dart';
import 'package:mobile_banking_app/splash_screen.dart';

import 'bill_payment_screen.dart';

class BillingScreen extends StatefulWidget {
  final int service;
  List<double> balance;
  BillingScreen(this.service, this.balance, {Key? key}) : super(key: key);

  @override
  State<BillingScreen> createState() => _BillingScreenState();
}

class _BillingScreenState extends State<BillingScreen> {
  @override
  Widget build(BuildContext context) {
    AppBar:
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xFF000814),
            title: Text(
              'Merchants',
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
        body: //Text(merchants[widget.service][0], style: TextStyle(color: Colors.white)),
            ListView(
          children: <Widget>[
            Card(
              color: Color(0xff003566),
              child: ListTile(
                onTap: (() {
                  payService(merchants[widget.service][0], context, balance);
                }),
                title: Text(
                  merchants[widget.service][0],
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Card(
              color: Color(0xff001D3D),
              child: ListTile(
                onTap: (() {
                  payService(merchants[widget.service][1], context, balance);
                }),
                title: Text(
                  merchants[widget.service][1],
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Card(
              color: Color(0xff003566),
              child: ListTile(
                onTap: (() {
                  payService(merchants[widget.service][2], context, balance);
                }),
                title: Text(
                  merchants[widget.service][2],
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Card(
              color: Color(0xff001D3D),
              child: ListTile(
                onTap: (() {
                  payService(merchants[widget.service][3], context, balance);
                }),
                title: Text(
                  merchants[widget.service][3],
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Card(
              color: Color(0xff003566),
              child: ListTile(
                onTap: (() {
                  payService(merchants[widget.service][4], context, balance);
                }),
                title: Text(
                  merchants[widget.service][4],
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Card(
              color: Color(0xff001D3D),
              child: ListTile(
                onTap: (() {
                  payService(merchants[widget.service][5], context, balance);
                }),
                title: Text(
                  merchants[widget.service][5],
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Card(
              color: Color(0xff003566),
              child: ListTile(
                onTap: (() {
                  payService(merchants[widget.service][6], context, balance);
                }),
                title: Text(
                  merchants[widget.service][6],
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Card(
              color: Color(0xff001D3D),
              child: ListTile(
                onTap: (() {
                  payService(merchants[widget.service][7], context, balance);
                }),
                title: Text(
                  merchants[widget.service][7],
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Card(
              color: Color(0xff003566),
              child: ListTile(
                onTap: (() {
                  payService(merchants[widget.service][8], context, balance);
                }),
                title: Text(
                  merchants[widget.service][8],
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Card(
              color: Color(0xff001D3D),
              child: ListTile(
                onTap: (() {
                  payService(merchants[widget.service][9], context, balance);
                }),
                title: Text(
                  merchants[widget.service][9],
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            /*
          title: Text(merchants[widget.service][1]),
          onTap: () =>
              payService(merchants[widget.service][0], context, balance),
        ),*/
            /*SizedBox(width: double.infinity, height: 50,child: ElevatedButton( style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xff003566)), foregroundColor: MaterialStateProperty.all(const Color(0xffffffff)),),
          onPressed: (){payService(merchants[widget.service][0],context, balance);}, child: Text(merchants[widget.service][0]),)),

        SizedBox(width: double.infinity, height: 50,child: ElevatedButton( style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xff001D3D)), foregroundColor: MaterialStateProperty.all(const Color(0xffffffff)),),
          onPressed: (){payService(merchants[widget.service][1],context , balance);}, child: Text(merchants[widget.service][1]),)),

        SizedBox(width: double.infinity, height: 50,child: ElevatedButton( style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xff003566)), foregroundColor: MaterialStateProperty.all(const Color(0xffffffff)),),
        onPressed: (){payService(merchants[widget.service][2],context,  balance);}, child: Text(merchants[widget.service][2]),)),

        SizedBox(width: double.infinity, height: 50,child: ElevatedButton( style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xff001D3D)), foregroundColor: MaterialStateProperty.all(const Color(0xffffffff)),),
          onPressed: (){payService(merchants[widget.service][3],context,  balance);}, child: Text(merchants[widget.service][3]),)),

        SizedBox(width: double.infinity, height: 50,child: ElevatedButton( style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xff003566)), foregroundColor: MaterialStateProperty.all(const Color(0xffffffff)),),
          onPressed: (){payService(merchants[widget.service][4],context,  balance);}, child: Text(merchants[widget.service][4]),)),

        SizedBox(width: double.infinity, height: 50,child: ElevatedButton( style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xff001D3D)), foregroundColor: MaterialStateProperty.all(const Color(0xffffffff)),),
          onPressed: (){payService(merchants[widget.service][5],context,  balance);}, child: Text(merchants[widget.service][5]),)),

        SizedBox(width: double.infinity, height: 50,child: ElevatedButton( style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xff003566)), foregroundColor: MaterialStateProperty.all(const Color(0xffffffff)),),
          onPressed: (){payService(merchants[widget.service][6],context,  balance);}, child: Text(merchants[widget.service][6]),)),

        SizedBox(width: double.infinity, height: 50,child: ElevatedButton( style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xff001D3D)), foregroundColor: MaterialStateProperty.all(const Color(0xffffffff)),),
          onPressed: (){payService(merchants[widget.service][7],context,  balance);}, child: Text(merchants[widget.service][7]),)),

        SizedBox(width: double.infinity, height: 50,child: ElevatedButton( style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xff003566)), foregroundColor: MaterialStateProperty.all(const Color(0xffffffff)),),
          onPressed: (){payService(merchants[widget.service][8],context,  balance);}, child: Text(merchants[widget.service][8]),)),

        SizedBox(width: double.infinity, height: 50,child: ElevatedButton( style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xff001D3D)), foregroundColor: MaterialStateProperty.all(const Color(0xffffffff)),),
          onPressed: (){payService(merchants[widget.service][9],context,  balance);}, child: Text(merchants[widget.service][9]),)),
          */
          ],
        ));
  }
}

List<List> merchants = [
  [
    "Adendimun",
    "APEC",
    "ANECO",
    "ANTECO",
    "BENECO",
    "CELCO",
    "CELCOR",
    "DANECO",
    "FLECO",
    "ILECO II"
  ],
  [
    "Angeles Water",
    "Aqua Centro",
    "Baguio Water District",
    "Boracay Water",
    "BP Water",
    "Calasiao Water",
    "CDO Water",
    "Clark Water",
    "Happy Well",
    "Hiyas Water"
  ],
  [
    "Cablelink",
    "Cignal",
    "Comclark",
    "Gnet",
    "GSAT",
    "KCAT",
    "Now Corp",
    "Skycable",
    "Star Cable",
    "TETCO"
  ],
  [
    "Bayantel",
    "Bedoo",
    "GTSI",
    "PT&T",
    "PLDT",
    "PLDT Ultera",
    "RACITELCOM",
    "SITELCO",
    "Smart Communications",
    "Wire Free Inc"
  ],
  [
    "AUB Credit Cards",
    "BDO AMEX",
    "BDO MC OR VISA",
    "BPI Credit Card",
    "EastWest Bank",
    "HSBC",
    "LCC EXPRESSLINK",
    "PNB Credit Card",
    "Robinsons Credit Card",
    "Unionbank Visa or MC"
  ],
  [
    "ACOM",
    "Advance",
    "AEON Credit",
    "AGRIBANK",
    "Andali",
    "Asialink",
    "Benlify",
    "Card Inc",
    "Cashalo",
    "CIMB Bank"
  ],
  [
    "BIR",
    "BSP",
    "DFA",
    "LTFRB",
    "Marina",
    "MMDA",
    "NBI",
    "NHMFC",
    "POEA",
    "TIEZA"
  ],
  [
    "Allianz PNB Life",
    "CCLPI",
    "Cocolife",
    "DIALEX",
    "Fortune Life",
    "Generali PH",
    "Insular Life",
    "MAPFRE",
    "Pioneer Life",
    "Pru Life UK"
  ],
  [
    "AirAsia",
    "AP CARGO",
    "BIYAHEKO",
    "Cebu Pacific",
    "Easytrip RFID",
    "Philippine Airlines",
    "STARLITE FERRIES",
    "SUPERCAT",
    "TRANS-ASIA SHIPPING LINES",
    "Viacom"
  ],
  [
    "ACTIVE REALITY",
    "AGGLC",
    "APMC",
    "APMC - Amaia",
    "BESC",
    "BGCEA",
    "Bria",
    "CAD Realty",
    "FBDC",
    "Honeycomb"
  ],
  [
    "Adventist Medical Center Manila",
    "Fortune Medicare",
    "iConex",
    "KonsultaMD",
    "Kaiser International",
    "Maxicare",
    "Medicard",
    "PRU Life UK",
    "St. Dominic MEDICAL CENTER",
    "Sun Life"
  ],
  [
    "Adamson",
    "APEC Schools",
    "ADMU",
    "ADDU",
    "CALAMBA Institute",
    "DLSZ",
    "DRAGONSCHOOLS",
    "LSGH",
    "Luna Academy",
    "STI"
  ]
];

void payService(String merchantName, BuildContext context, List<double> balance) {
  Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context) => BillPaymentScreen(merchantName, balance)),
  );
}
