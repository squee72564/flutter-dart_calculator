import 'package:flutter/material.dart';
import 'package:flutter_app1/src/button.dart';

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
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Calculator App"),
      ),
      backgroundColor: const Color.fromARGB(255, 167, 200, 227),
      body: Center(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                CalcButton(
                  buttontapped: () {
                    setState(() {
                      input = '';
                      answer = '0';
                    });
                  }
                  buttonText: "Del",
                  color: Color.fromARGB(153, 87, 159, 77),
                  textColor: ,
                  buttonText: ,
                  buttontapped: ,

                ),
              ],
            ),
          ],
        ),
      ),
      
      );
  }
}