import 'package:flutter/material.dart';
import 'package:first_flutter/Kalkulator.dart';
import 'package:first_flutter/inputphone.dart';

class halamanKedua extends StatefulWidget {
  const halamanKedua({Key? key}) : super(key: key);

  @override
  State<halamanKedua> createState() => _halamanKeduaState();
}

class _halamanKeduaState extends State<halamanKedua> {
  TextEditingController ctrUsername = new TextEditingController();
  TextEditingController ctrNama = new TextEditingController();
  TextEditingController phoneNumber = new TextEditingController();


  Widget txtInput(String username, TextEditingController controller){
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: username,
      ),
    );
  }

  Widget btnRegister(String text) {
    return Container(
      width: 150,
      child: ElevatedButton(onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => kalkulator(name: ctrNama.text,)));
      }, child: Text(text)),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrasi'),
      ),
      body: Container(
        child: Column(
          children: [
            txtInput("username", ctrUsername),
            SizedBox(height: 10,),
            txtInput("nama", ctrNama),
            SizedBox(height: 10,),
            btnRegister("Submit"),
            Row(
              children: [
                Text('phone number   ' + phoneNumber.text),
                SizedBox(height: 25,),
                ElevatedButton(onPressed: () async {
                  final result = await Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const inputPhone())
                  );

                  setState(() {
                    phoneNumber.text = result.toString();
                  });

                }, child: Text('input phone'),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
