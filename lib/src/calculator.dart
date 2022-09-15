import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var input = '';
  var asnwer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Calculator App"),
      ),
      backgroundColor: Color.fromARGB(255, 167, 200, 227),
      );
  }
}