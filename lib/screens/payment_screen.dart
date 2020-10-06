import 'package:flutter/material.dart';
import 'package:paymenet_screen/widget/card_widget.dart';
import '../widget/form_widget.dart';

class PaymentScreen extends StatefulWidget {
  static const String routeName = '/payment_route';

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
                Column(
                  children: [
                    CardWidget(),
                    SizedBox(
                      height: 23,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 23.0),
                      child: Row(
                        children: [
                          Text(
                            'Add card',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    FormWidget(),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
