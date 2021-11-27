import 'package:flutter/material.dart';
import 'package:mobile_banking_app/dashboard.dart';
import 'package:mobile_banking_app/splash_screen.dart';

class TransferMoneySuccess extends StatelessWidget {
  const TransferMoneySuccess({Key? key}) : super(key: key);

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
              onPressed: () {}, //link back to prev page
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
                      'Step 3 of 3',
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
                      'Success',
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
              height: 150,
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
                    child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Transaction Number: ')),
                  ),
                  Container(
                    height: 50,
                    child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Remaining Balance on card:')),
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard(balance)),
                  );
                },
                child: Text(
                  'Home',
                ))
          ],
        ),
      ),
    );
  }
}
