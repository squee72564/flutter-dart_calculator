import 'package:flutter/material.dart';
import 'package:flutter_app1/src/View/calc_buttons.dart';
import 'package:flutter_app1/src/View/calc_screen.dart';

class CalculatorUI extends StatefulWidget {
  const CalculatorUI({
    super.key,
  });

  @override
  _CalculatorUIState createState() => _CalculatorUIState();
}

class _CalculatorUIState extends State<CalculatorUI> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: const Color.fromARGB(255, 102, 106, 110),
        padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              CalcDisplay(),
              CalcRow(
                buttonColors: [
                  Color.fromARGB(255, 90, 92, 95),
                  Color.fromARGB(255, 90, 92, 95),
                  Color.fromARGB(255, 90, 92, 95),
                  Color.fromARGB(255, 90, 92, 95),
                ],
                buttonTexts: ["CE", "C", " ", "DEL"],
              ),
              CalcRow(
                buttonColors:  [
                  Color.fromARGB(255, 90, 92, 95),
                  Color.fromARGB(255, 90, 92, 95),
                  Color.fromARGB(255, 90, 92, 95),
                  Color.fromARGB(255, 90, 92, 95),
                ],
                buttonTexts:  ["1/x", "x^2", "sqrt", "/"],
              ),
              CalcRow(
                buttonColors:  [
                  Color.fromARGB(255, 63, 65, 66),
                  Color.fromARGB(255, 63, 65, 66),
                  Color.fromARGB(255, 63, 65, 66),
                  Color.fromARGB(255, 90, 92, 95),
                ],
                buttonTexts:  ["7", "8", "9", "*"],
              ),
              CalcRow(
                buttonColors:  [
                  Color.fromARGB(255, 63, 65, 66),
                  Color.fromARGB(255, 63, 65, 66),
                  Color.fromARGB(255, 63, 65, 66),
                  Color.fromARGB(255, 90, 92, 95),
                ],
                buttonTexts:  ["4", "5", "6", "-"],
              ),
              CalcRow(
                buttonColors:  [
                  Color.fromARGB(255, 63, 65, 66),
                  Color.fromARGB(255, 63, 65, 66),
                  Color.fromARGB(255, 63, 65, 66),
                  Color.fromARGB(255, 90, 92, 95),
                ],
                buttonTexts:  ["1", "2", "3", "+"],
              ),
              CalcRow(
                buttonColors:  [
                  Color.fromARGB(255, 63, 65, 66),
                  Color.fromARGB(255, 63, 65, 66),
                  Color.fromARGB(255, 63, 65, 66),
                  Color.fromARGB(255, 90, 92, 95),
                ],
                buttonTexts:  ["+/-", "0", ".", "="],
              ),
            ],
          ),
      ),
    );
  }
}
