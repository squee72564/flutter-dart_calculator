import 'package:flutter/material.dart';
import 'package:flutter_app1/src/View/calc_buttons.dart';

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
                      child: Center(
                        child: Text(
                          answer, 
                          style: const TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
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
        ),
      ),
    );
  }
}
