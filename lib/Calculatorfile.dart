import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(this.height, this.weight);
  final height;
  final weight;
  double _bmi;

  //Member Function
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than body normal weight.Try to Exercise more';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good WORK!';
    } else {
      return 'you have a lower than body weight.You can eat a bit more';
    }
  }
}
