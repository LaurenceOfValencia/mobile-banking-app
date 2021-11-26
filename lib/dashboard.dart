import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_banking_app/accounts.dart';
import 'package:mobile_banking_app/login_screen.dart';
import 'package:mobile_banking_app/services_screen.dart';

List<String> account = [];

void loadAccount() async {
  account = await getAccount();
}

class Dashboard extends StatefulWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 0),
        () => loadAccount());}


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
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: Text("Good day " + account[0] + ",\nWelcome Back!",
                      style: const TextStyle(color: Colors.white, fontSize: 18),),
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()),
                    );}, icon: const Icon(Icons.logout, color: Color(0xffffffff),)),
                  ),
                ]
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 170,
                    padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: RichText(text: TextSpan(text: "Total Balance:\n", style: const TextStyle(fontSize: 13, color: Color(0x77ffffff)),
                        children: <TextSpan>[
                          TextSpan(text: "Php "+ account[2], style: const TextStyle(fontSize: 25, color: Colors.white,)),
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
                    padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: RichText(text: TextSpan(text: "Expenditure Report:\n", style: const TextStyle(fontSize: 13, color: Color(0x77ffffff)),
                        children: <TextSpan>[
                          TextSpan(text: "Php "+account[3], style: const TextStyle(fontSize: 25, color: Colors.white),),
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
                      child: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const ServicesScreen()),
                    );}, icon: const Icon(Icons.swap_horiz), tooltip: "Tranfer Money",),
                    ),
                  ),
                  Expanded(
                    child: Ink(
                      decoration: const ShapeDecoration(
                        color: Color(0xffffd60a),
                        shape: CircleBorder(),
                      ),
                      child: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const ServicesScreen()),
                    );}, icon: const Icon(Icons.receipt_long), tooltip: "Pay Bills",),
                    ),
                  ),
                  Expanded(
                    child: Ink(
                      decoration: const ShapeDecoration(
                        color: Color(0xffffd60a),
                        shape: CircleBorder(),
                      ),
                      child: IconButton(onPressed: (){const snackBar = SnackBar(content: Text("This functionality is not available for this demo"));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);}, icon: const Icon(Icons.analytics), tooltip: "Analytics",),
                    ),
                  ),
                  Expanded(
                    child: Ink(
                      decoration: const ShapeDecoration(
                        color: Color(0xffffd60a),
                        shape: CircleBorder(),
                      ),
                      child: IconButton(onPressed: (){const snackBar = SnackBar(content: Text("This functionality is not available for this demo"));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);}, icon: const Icon(Icons.account_circle), tooltip: "Profile",),
                    ),
                  )
                ],
              ),
            ),

            Container(
              height: 230,
              width: double.infinity,
              child: const Padding(
                padding: EdgeInsets.all(30.0),
                child: Text("Debit", style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/visa.png"), fit: BoxFit.fill),
                borderRadius: BorderRadius.all(Radius.circular(40)),
                color: Color(0xff003566),
              ),
            ),
            
            Container(
              height: 120,
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ElevatedButton(
                onPressed: (){}, 
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
                    Text("Add a card", style: TextStyle(color: Colors.white, fontSize: 18),),
                    Icon(Icons.add_rounded, color: Color(0xffFFD60A),)
                    ],),
                ), 
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40)))),
                  backgroundColor: MaterialStateProperty.all(const Color(0xff001d3d)),
                ),),
            ),

            
          ],

        ),
      ),
    );
  }
}
