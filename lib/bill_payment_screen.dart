import 'package:flutter/material.dart';
import 'package:mobile_banking_app/services_screen.dart';
import 'package:mobile_banking_app/splash_screen.dart';

import 'dashboard.dart';

String dropValue ='1. Card1';

// ignore: must_be_immutable
class BillPaymentScreen extends StatefulWidget {
  String merchantName;
  List<double> balance;
  BillPaymentScreen(this.merchantName, this.balance, {Key? key})
      : super(key: key);

  @override
  _BillPaymentScreenState createState() => _BillPaymentScreenState();
}

TextEditingController accountNumController = TextEditingController();
TextEditingController accountNameController = TextEditingController();
TextEditingController amountController = TextEditingController();

class _BillPaymentScreenState extends State<BillPaymentScreen> {

  ValueNotifier<int> number = ValueNotifier(0);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color(0xFF000814),
            title: const Text(
              'Payment',
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
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                widget.merchantName,
                style: const TextStyle(color: Color(0xffffffff), fontSize: 40),
              ),
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

            TextField(
              maxLength: 12,
              controller: accountNumController,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Account Number",
                  labelStyle: TextStyle(color: Color(0xff001D3D))),
              style: const TextStyle(
                color: Color(0xff001D3D),
              ),
            ),
            TextField(
              controller: accountNameController,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Account Name",
                  labelStyle: TextStyle(color: Color(0xff001D3D))),
              style: const TextStyle(
                color: Color(0xff000000),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: amountController,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Amount to Pay",
                  labelStyle: TextStyle(color: Color(0xff001D3D))),
              style: const TextStyle(
                color: Color(0xff000000),
              ),
            ),
            ElevatedButton(
                onPressed: () { 
                  if (accountNameController.text.isNotEmpty) {
                    if(accountNumController.text.length == 12){
                      if(double.parse(amountController.text) <= balance[int.parse(dropValue.split(".")[0])-1]){
                        balance[int.parse(dropValue.split(".")[0])-1] -= double.parse(amountController.text);
                        balance[2] += double.parse(amountController.text);
                        balance[3]++;

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Dashboard(balance)),
                        );
                      }
                      else{
                        const snackBar = SnackBar(content: Text('Amount should not exceed card balance'));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    }
                    else{
                      const snackBar = SnackBar(content: Text('Account number must be 12 characters long'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  } 
                  else {
                    const snackBar = SnackBar(content: Text('Please fill in all the fields'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                child: const Text("Confirm"))
          ],
        )
    );
  }
}
