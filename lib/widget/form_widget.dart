import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isSwitch = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.85,
            child: TextFormField(
              validator: (value) {
                if (value.isEmpty || value.length < 5) {
                  return 'please enter a complete number';
                }
                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                ),
                hintText: 'Card number',
                suffixIcon: Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: Image.asset(
                    'assets/images/images.png',
                    width: 10,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.85,
            child: TextFormField(
              validator: (value) {
                if (value.isEmpty || value.length < 5) {
                  return 'Name is not valid add correct name';
                }
                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                ),
                hintText: 'Please enter your name',
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.85,
            child: TextFormField(
              validator: (value) {
                if (value.isEmpty || value.length < 5) {
                  return 'please Enter your name ';
                }
                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                ),
                hintText: 'Card number',
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 23.0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Save card details?',
                  style: TextStyle(color: Colors.purple),
                ),
                Switch(
                  value: _isSwitch,
                  onChanged: (value) {
                    setState(() {
                      _isSwitch = value;
                    });
                  },
                  activeTrackColor: Colors.purple,
                  activeColor: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: MaterialButton(
              onPressed: () {
                print('Save Data');
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.05,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Save',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
