import 'package:bmi_calculator/Constantfile.dart';
import 'package:bmi_calculator/InputPage.dart';
import 'package:flutter/material.dart';
import 'Containerfile.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

  final bmiResult;
  final resultText;
  final interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('BMI Result'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your Result',
                  style: Kresult,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: RepeatContainerCode(
              colors: rsltcolor,
              cardWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    resultText,
                    style: Knormal,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    bmiResult,
                    style: Kresult,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    interpretation,
                    style: KLabelStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InputPage(),
                  ),
                );
              },
              child: Container(
                child: Center(
                  child: Text(
                    'ReCalculate',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                margin: EdgeInsets.only(top: 10.0),
                color: Colors.blue,
                width: double.infinity,
                height: 60.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
