import 'package:flutter/material.dart';

class inputPhone extends StatefulWidget {
  const inputPhone({Key? key}) : super(key: key);

  @override
  State<inputPhone> createState() => _inputPhoneState();
}

class _inputPhoneState extends State<inputPhone> {
  TextEditingController ctrPhone = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("input your phone number"),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: ctrPhone,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "input phone number"),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, ctrPhone.text);
                },
                child: Text("submit"))
          ],
        ),
      ),
    );
  }
}
