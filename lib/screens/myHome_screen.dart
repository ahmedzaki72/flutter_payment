import 'package:flutter/material.dart';
import 'package:paymenet_screen/screens/payment_screen.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: FlatButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            Navigator.of(context).pushNamed(PaymentScreen.routeName);
          },
          child: Text(
            'Payment Now',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
