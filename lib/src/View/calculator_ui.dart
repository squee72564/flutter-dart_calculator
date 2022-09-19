import 'package:flutter/material.dart';
import 'package:flutter_app1/src/View/calc_buttons.dart';
import 'package:flutter_app1/src/View/calc_screen.dart';

class CalculatorUI extends StatefulWidget {
  final calc;
  final calcController;

  const CalculatorUI({
    super.key,
    required this.calc,
    required this.calcController,
  });

  @override
  _CalculatorUIState createState() => _CalculatorUIState();
}

class _CalculatorUIState extends State<CalculatorUI> {
  var input = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.grey[700],
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CalcDisplay(),
              CalcRow(
                buttonColors: const [
                  Color.fromARGB(255, 156, 167, 177),
                  Color.fromARGB(255, 156, 167, 177),
                  Color.fromARGB(255, 156, 167, 177),
                  Color.fromARGB(255, 206, 214, 221),
                ],
                buttonTexts: const ["CE", "C", " ", "DEL"],
              ),
              CalcRow(
                buttonColors: const [
                  Color.fromARGB(255, 156, 167, 177),
                  Color.fromARGB(255, 156, 167, 177),
                  Color.fromARGB(255, 156, 167, 177),
                  Color.fromARGB(255, 206, 214, 221),
                ],
                buttonTexts: const ["1/x", "x^2", "sqrt", "/"],
              ),
              CalcRow(
                buttonColors: const [
                  Color.fromARGB(255, 156, 167, 177),
                  Color.fromARGB(255, 156, 167, 177),
                  Color.fromARGB(255, 156, 167, 177),
                  Color.fromARGB(255, 206, 214, 221),
                ],
                buttonTexts: const ["7", "8", "9", "x"],
              ),
              CalcRow(
                buttonColors: const [
                  Color.fromARGB(255, 156, 167, 177),
                  Color.fromARGB(255, 156, 167, 177),
                  Color.fromARGB(255, 156, 167, 177),
                  Color.fromARGB(255, 206, 214, 221),
                ],
                buttonTexts: const ["4", "5", "6", "-"],
              ),
              CalcRow(
                buttonColors: const [
                  Color.fromARGB(255, 156, 167, 177),
                  Color.fromARGB(255, 156, 167, 177),
                  Color.fromARGB(255, 156, 167, 177),
                  Color.fromARGB(255, 206, 214, 221),
                ],
                buttonTexts: const ["1", "2", "3", "+"],
              ),
              CalcRow(
                buttonColors: const [
                  Color.fromARGB(255, 156, 167, 177),
                  Color.fromARGB(255, 156, 167, 177),
                  Color.fromARGB(255, 156, 167, 177),
                  Color.fromARGB(255, 206, 214, 221),
                ],
                buttonTexts: const ["+/-", "0", ".", "="],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
