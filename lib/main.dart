import 'package:flutter/material.dart';
import 'package:paymenet_screen/screens/payment_screen.dart';
import 'screens/myHome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Home'),
      routes: {
        PaymentScreen.routeName : (ctx) => PaymentScreen(),
      },
    );
  }
}

