import 'package:flutter/material.dart';
import 'package:mobile_banking_app/dashboard.dart';
import 'package:mobile_banking_app/splash_screen.dart';
import 'package:mobile_banking_app/transfer_money_screen.dart';

class TransferMoneySuccess extends StatefulWidget {
  List<double> balance;
  List<String> transactionDetails;
  TransferMoneySuccess(this.balance, this.transactionDetails, {Key? key}) : super(key: key);

  @override
  State<TransferMoneySuccess> createState() => _TransferMoneySuccessState();
}

class _TransferMoneySuccessState extends State<TransferMoneySuccess> {
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
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard(balance)),
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
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Transaction Number: ARXKL02' + (balance[3].toInt() % 8).toString() + "B3SA72" + balance[3].toString())),
                  ),
                  Container(
                    height: 50,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Remaining Balance on card: Php' + balance[int.parse(transactionDetails[0])-1].toString())),
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
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
