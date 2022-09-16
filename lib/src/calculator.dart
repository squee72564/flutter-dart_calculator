import 'package:flutter/material.dart';
import 'package:flutter_app1/src/calcButtons.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var input = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FittedBox(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4.0),
            child: Container(
              color: Colors.grey[900],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const <Widget>[
                  CalcRow(
                    buttonColors: [
                      Color.fromARGB(255, 127, 179, 221),
                      Color.fromARGB(255, 127, 179, 221),
                      Color.fromARGB(255, 171, 203, 230),
                      Color.fromARGB(255, 127, 179, 221)
                    ],
                    buttonTexts: ["CE", "C", " ", "DEL"],
                  ),
                  CalcRow(
                    buttonColors: [
                      Color.fromARGB(255, 127, 179, 221),
                      Color.fromARGB(255, 127, 179, 221),
                      Color.fromARGB(255, 127, 179, 221),
                      Color.fromARGB(255, 127, 179, 221)
                    ],
                    buttonTexts: ["1/x", "x^2", "sqrt", "/"],
                  ),
                  CalcRow(
                    buttonColors: [
                      Color.fromARGB(255, 88, 152, 204),
                      Color.fromARGB(255, 88, 152, 204),
                      Color.fromARGB(255, 88, 152, 204),
                      Color.fromARGB(255, 127, 179, 221)
                    ],
                    buttonTexts: ["7", "8", "9", "x"],
                  ),
                  CalcRow(
                    buttonColors: [
                      Color.fromARGB(255, 88, 152, 204),
                      Color.fromARGB(255, 88, 152, 204),
                      Color.fromARGB(255, 88, 152, 204),
                      Color.fromARGB(255, 127, 179, 221)
                    ],
                    buttonTexts: ["4", "5", "6", "-"],
                  ),
                  CalcRow(
                    buttonColors: [
                      Color.fromARGB(255, 88, 152, 204),
                      Color.fromARGB(255, 88, 152, 204),
                      Color.fromARGB(255, 88, 152, 204),
                      Color.fromARGB(255, 127, 179, 221)
                    ],
                    buttonTexts: ["1", "2", "3", "+"],
                  ),
                  CalcRow(
                    buttonColors: [
                      Color.fromARGB(255, 88, 152, 204),
                      Color.fromARGB(255, 88, 152, 204),
                      Color.fromARGB(255, 88, 152, 204),
                      Color.fromARGB(255, 127, 179, 221)
                    ],
                    buttonTexts: ["+/-", "0", ".", "="],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
