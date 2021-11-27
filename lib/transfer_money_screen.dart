// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mobile_banking_app/splash_screen.dart';
import 'package:mobile_banking_app/transfer_money_confirmation_page.dart';

import 'dashboard.dart';

String dropValue ='1. Card1';
List<String> transactionDetails = ['card1', 'acount number', 'amount'];

TextEditingController accountNumController = TextEditingController();
TextEditingController amountController = TextEditingController();
final number = ValueNotifier(0);

class TransferMoneyScreen extends StatefulWidget {
  List<double> balance;
  TransferMoneyScreen(this.balance, {Key? key}): super(key: key);

  


  @override
  State<TransferMoneyScreen> createState() => _TransferMoneyScreenState();
}

class _TransferMoneyScreenState extends State<TransferMoneyScreen> {

  ValueNotifier<int> number = ValueNotifier(0);

  //_TransferMoneyScreenState(this.number);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: const Text(
              "Transfer Money",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
            ),
            elevation: 0,
            backgroundColor: const Color(0xff000814),
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
                      MaterialPageRoute(
                          builder: (context) => Dashboard(widget.balance)),
                    );
                  }, //link back to prev page
                );
              },
            )),
        body: SingleChildScrollView(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Row(
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Step 1 of 3',
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
                      'Fill in the Details',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: const <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: Text(
                        'Transfer from :',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ValueListenableBuilder(
                valueListenable: number,
                child: const Icon(Icons.ac_unit),
                builder: (BuildContext context, int test, Widget? child){
                  return Column(
                    children: [
                      Theme( data:
                      Theme.of(context).copyWith(canvasColor: Colors.white),
                      child: Container(
                        color: Colors.white,
                        child: DropdownButton<String>(
                          value: dropValue,
                          isExpanded: true,
                          items: <String>['1. Card1','2. Card2'].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropValue = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                      Text("Card Balance: Php " + balance[int.parse(dropValue.split(".")[0])-1].toString(),
                      style: const TextStyle(color: Color(0xffffffff)),),
                    ],
                    );
                },
              ),
              
              const Divider(
                color: Color(0xFFFFD60A),
                indent: 20,
                endIndent: 20,
              ),
              // ignore: prefer_const_constructors
              Column(
                children: const <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: Text(
                        'Transfer Amount',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: amountController,
                        cursorColor: const Color(0xff003566),
                        decoration: const InputDecoration(
                          labelText: 'Amount',
                          labelStyle: TextStyle(color: Color(0xFF003566)),
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: const <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: Text(
                        'Send to',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding:  const EdgeInsets.all(10),
                child:  TextField(
                  controller: accountNumController,
                  cursorColor: const Color(0xff003566),
                  maxLength: 12,
                  decoration: const InputDecoration(
                    labelText: 'Account Number',
                    labelStyle: TextStyle(color: Color(0xFF003566)),
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: () { 
                      String cardChosen = (dropValue.split("."))[0];

                      if(amountController.text.isNotEmpty) {
                        double amount = double.parse(amountController.text);
                        if(accountNumController.text.length == 12){
                          if(amount >= 200 && amount <= balance[int.parse(cardChosen)-1]){
                            transactionDetails = [cardChosen, accountNumController.text, amount.toString()];
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TransferMoneyConfirmation(widget.balance, transactionDetails)));
                          }
                          else{
                            const snackBar = SnackBar(content: Text('Amount must be at least 200 and does not exceed card balance'));
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          }
                        }
                        else{
                          const snackBar = SnackBar(content: Text('Account number must be 12 characters long'));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      }
                      else{
                        const snackBar = SnackBar(content: Text('Please fill in all the fields'));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                            },
                child: const Text('Proceed'),
              ),
            ],
          ),
        ),
      ),
    );
  }



}