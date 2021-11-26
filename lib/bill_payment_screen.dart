import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BillPaymentScreen extends StatefulWidget {
  String merchantName;
  BillPaymentScreen(this.merchantName, BuildContext context, { Key? key }) : super(key: key);

  @override
  _BillPaymentScreenState createState() => _BillPaymentScreenState();
}

class _BillPaymentScreenState extends State<BillPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(widget.merchantName,style: const TextStyle(color: Color(0xffffffff), fontSize: 50),),
          const TextField(
              decoration: InputDecoration(
              border: InputBorder.none,
              filled: true,
              fillColor: Color(0xbb555555),
              labelText: "Account Number",
              labelStyle: TextStyle(color: Color(0xffffd60a))
            ),
            style: TextStyle(
              color: Color(0xffffffff),
            ),
          ),

          const TextField(
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

          const TextField(
              decoration: InputDecoration(
              border: InputBorder.none,
              filled: true,
              fillColor: Color(0xbb555555),
              labelText: "Amount to Pay",
              labelStyle: TextStyle(color: Color(0xffffd60a))
            ),
            style: TextStyle(
              color: Color(0xffffffff),
            ),
          ),
          
          ElevatedButton(onPressed: (){}, child: const Text("Confirm"))
        ],
      )
    );
  }
}