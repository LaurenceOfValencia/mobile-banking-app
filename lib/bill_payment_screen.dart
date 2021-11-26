import 'package:flutter/material.dart';
import 'package:mobile_banking_app/splash_screen.dart';

import 'dashboard.dart';

// ignore: must_be_immutable
class BillPaymentScreen extends StatefulWidget {
  String merchantName;
  List<double> balance;
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
            if(double.parse(amountController.text)<= balance[0]+balance[1]) //checks if amount is smaller than balance
            {
              if (accountNumController.text.length == 12) //checks is account number is exactly 12 characters
              {
                if(accountNameController.text.length > 0) 
                {
                  if(true)//admin1 card is chosen
                  {
                    double diff = balance[0] - double.parse(amountController.text);
                    balance[0] = diff;
                    balance[2] = double.parse(amountController.text);
                  }
                  else//admin2 card is chosen
                  {
                    double diff = balance[1] - double.parse(amountController.text);
                    balance[1] = diff;
                    balance[2] = double.parse(amountController.text);
                  }
                  Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard(balance)));
                }
                else 
                {
                  //snackbar about blank name
                }
              }
              else
              {
                //snack bar about not enough characters
              }
            }
            else
            {
              //insert snack bar
            }
    

          }, child: const Text("Confirm"))
        ],
      )
    );
  }
}