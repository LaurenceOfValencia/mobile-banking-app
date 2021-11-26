import 'package:flutter/material.dart';

class BuildCreditCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildCreditCard(
                color: const Color(0xFF090943),
                cardExpiration: "08/2022",
                cardHolder: "HOUSSEM SELMI",
                cardNumber: "3546 7532 XXXX 9742"),
            const SizedBox(
              height: 15,
            ),
            _buildCreditCard(
                color: const Color(0xFF000000),
                cardExpiration: "05/2024",
                cardHolder: "HOUSSEM SELMI",
                cardNumber: "9874 4785 XXXX 6548"),
          ],
        ),
      ),
    );
  }


  // Build the credit card widget
  Card _buildCreditCard(
      {@required Color? color,
      @required String? cardNumber,
      @required String? cardHolder,
      @required String? cardExpiration}) {
    return Card(
      elevation: 4.0,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Container(
        height: 200,
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _buildLogosBlock(),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                '$cardNumber',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontFamily: 'CourrierPrime'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _buildDetailsBlock(
                  label: 'CARDHOLDER',
                  value: cardHolder,
                ),
                _buildDetailsBlock(label: 'VALID THRU', value: cardExpiration),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Build the top row containing logos
  Row _buildLogosBlock() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Image.asset(
          "assets/images/contact_less.png",
          height: 20,
          width: 18,
        ),
        Image.asset(
          "assets/images/mastercard.png",
          height: 50,
          width: 50,
        ),
      ],
    );
  }

// Build Column containing the cardholder and expiration information
  Column _buildDetailsBlock(
      {@required String? label, @required String? value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '$label',
          style: const TextStyle(
              color: Colors.grey, fontSize: 9, fontWeight: FontWeight.bold),
        ),
        Text(
          '$value',
          style: const TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

// Build the FloatingActionButton
}
