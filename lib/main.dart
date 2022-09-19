import 'package:flutter/material.dart';
import 'src/app_init.dart';
import 'package:flutter_app1/src/Model/calculator.dart';
import 'package:flutter_app1/src/Controller/calculator_controller.dart';

void main() async {
  final Calculator calculator = Calculator();
  final CalculatorController calculatorController = CalculatorController();

  runApp(CalculatorAppConfigure(
    calc: calculator,
    calcController: calculatorController,
  ));
}
