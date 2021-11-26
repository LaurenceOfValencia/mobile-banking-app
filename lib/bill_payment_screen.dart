import 'package:flutter/material.dart';
import 'package:mobile_banking_app/splash_screen.dart';

// ignore: must_be_immutable
class BillPaymentScreen extends StatefulWidget {
  String merchantName;
  List<int> balance;
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
      body: Column(
        children: [
          Text(widget.merchantName,style: const TextStyle(color: Color(0xffffffff), fontSize: 50),),
            TextField(
              maxLength: 12,
              controller: accountNumController,
              decoration: InputDecoration(
              border: InputBorder.none,
              filled: true,
              fillColor: const Color(0xbb555555),
              labelText: "Account Number",
              labelStyle: const TextStyle(color: Color(0xffffd60a))
            ),
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
              labelStyle: TextStyle(color: Color(0xffffd60a))
            ),
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
              labelStyle: TextStyle(color: const Color(0xffffd60a))
            ),
            style: TextStyle(
              color: const Color(0xffffffff),
            ),
          ),
          
          ElevatedButton(onPressed: (){
            if(int.parse(amountController.text)> balance[0]+balance[1])
            {

            }
            else
            {

            }

          }, child: const Text("Confirm"))
        ],
      )
    );
  }
}