import 'package:first_flutter/kalkulator.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter/Kalkulator.dart';
import 'package:first_flutter/halamankedua.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      home: halamanKedua(),
    );
  }
}
