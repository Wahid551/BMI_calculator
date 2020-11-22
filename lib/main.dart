import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'InputPage.dart';

void main() {
  runApp(BMIcalculator());
}

class BMIcalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.blueGrey,
      ),
      //primaryColor: Colors.black,
      //primarySwatch: Colors.green,
      // scaffoldBackgroundColor: Colors.black,
      // textTheme: TextTheme(
      //   bodyText2: TextStyle(
      //     color: Colors.green,
      //     fontSize: 20.0,
      //     fontWeight: FontWeight.bold,
      //   ),
      // ),
    );
  }
}
