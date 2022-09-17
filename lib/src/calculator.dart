import 'dart:ui';

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
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              color: Colors.grey[700],
              padding: const EdgeInsets.all(5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      width: 420,
                      height: 200,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        border: Border.all(),
                      ),
                      child: const Center(
                        child: Text(
                          "Testing",
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const CalcRow(
                    buttonColors: [
                      Color.fromARGB(255, 156, 167, 177),
                      Color.fromARGB(255, 156, 167, 177),
                      Color.fromARGB(255, 156, 167, 177),
                      Color.fromARGB(255, 206, 214, 221)
                    ],
                    buttonTexts: ["CE", "C", " ", "DEL"],
                  ),
                  const CalcRow(
                    buttonColors: [
                      Color.fromARGB(255, 156, 167, 177),
                      Color.fromARGB(255, 156, 167, 177),
                      Color.fromARGB(255, 156, 167, 177),
                      Color.fromARGB(255, 206, 214, 221)
                    ],
                    buttonTexts: ["1/x", "x^2", "sqrt", "/"],
                  ),
                  const CalcRow(
                    buttonColors: [
                      Color.fromARGB(255, 156, 167, 177),
                      Color.fromARGB(255, 156, 167, 177),
                      Color.fromARGB(255, 156, 167, 177),
                      Color.fromARGB(255, 206, 214, 221)
                    ],
                    buttonTexts: ["7", "8", "9", "x"],
                  ),
                  const CalcRow(
                    buttonColors: [
                      Color.fromARGB(255, 156, 167, 177),
                      Color.fromARGB(255, 156, 167, 177),
                      Color.fromARGB(255, 156, 167, 177),
                      Color.fromARGB(255, 206, 214, 221)
                    ],
                    buttonTexts: ["4", "5", "6", "-"],
                  ),
                  const CalcRow(
                    buttonColors: [
                      Color.fromARGB(255, 156, 167, 177),
                      Color.fromARGB(255, 156, 167, 177),
                      Color.fromARGB(255, 156, 167, 177),
                      Color.fromARGB(255, 206, 214, 221)
                    ],
                    buttonTexts: ["1", "2", "3", "+"],
                  ),
                  const CalcRow(
                    buttonColors: [
                      Color.fromARGB(255, 156, 167, 177),
                      Color.fromARGB(255, 156, 167, 177),
                      Color.fromARGB(255, 156, 167, 177),
                      Color.fromARGB(255, 206, 214, 221)
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
