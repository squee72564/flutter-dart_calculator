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
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CalcDisplay(),
              Spacer(
                flex: 1,
              ),
              CalcRow(
                //CE C " " DEL
                buttonColors: const [
                  Color.fromARGB(255, 90, 92, 95),
                  Color.fromARGB(255, 90, 92, 95),
                  Color.fromARGB(255, 90, 92, 95),
                  Color.fromARGB(255, 90, 92, 95),
                ],
                buttonTexts: const ["CE", "C", " ", "DEL"],
              ),
              CalcRow(
                //1/x x^2 sqrt /
                buttonColors: const [
                  Color.fromARGB(255, 90, 92, 95),
                  Color.fromARGB(255, 90, 92, 95),
                  Color.fromARGB(255, 90, 92, 95),
                  Color.fromARGB(255, 90, 92, 95),
                ],
                buttonTexts: const ["1/x", "x^2", "sqrt", "/"],
              ),
              CalcRow(
                // 7 8 9 x
                buttonColors: const [
                  Color.fromARGB(255, 63, 65, 66),
                  Color.fromARGB(255, 63, 65, 66),
                  Color.fromARGB(255, 63, 65, 66),
                  Color.fromARGB(255, 90, 92, 95),
                ],
                buttonTexts: const ["7", "8", "9", "x"],
              ),
              CalcRow(
                // 4 5 6 -
                buttonColors: const [
                  Color.fromARGB(255, 63, 65, 66),
                  Color.fromARGB(255, 63, 65, 66),
                  Color.fromARGB(255, 63, 65, 66),
                  Color.fromARGB(255, 90, 92, 95),
                ],
                buttonTexts: const ["4", "5", "6", "-"],
              ),
              CalcRow(
                // 1 2 3 +
                buttonColors: const [
                  Color.fromARGB(255, 63, 65, 66),
                  Color.fromARGB(255, 63, 65, 66),
                  Color.fromARGB(255, 63, 65, 66),
                  Color.fromARGB(255, 90, 92, 95),
                ],
                buttonTexts: const ["1", "2", "3", "+"],
              ),
              CalcRow(
                // +- 0 . =
                buttonColors: const [
                  Color.fromARGB(255, 63, 65, 66),
                  Color.fromARGB(255, 63, 65, 66),
                  Color.fromARGB(255, 63, 65, 66),
                  Color.fromARGB(255, 90, 92, 95),
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
