import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//Widget for individual Calculator Button
class CalcButton extends StatelessWidget {
  final color;
  final textColor;
  final String buttonText;
  final buttontapped;

  CalcButton(
      {super.key,
      required this.color,
      this.textColor,
      required this.buttonText,
      this.buttontapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttontapped,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(7.0),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: color,
            border: Border.all(),
          ),
          child: FittedBox(
            child: Text(
              buttonText,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//Widget for row of 4 calculator buttons
class CalcRow extends StatelessWidget {
  final List<Color> buttonColors;
  final List<String> buttonTexts;

  const CalcRow({
    super.key,
    required this.buttonColors,
    required this.buttonTexts,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CalcButton(
          color: buttonColors[0],
          buttonText: buttonTexts[0],
        ),
        CalcButton(
          color: buttonColors[1],
          buttonText: buttonTexts[1],
        ),
        CalcButton(
          color: buttonColors[2],
          buttonText: buttonTexts[2],
        ),
        CalcButton(
          color: buttonColors[3],
          buttonText: buttonTexts[3],
        ),
      ],
    );
  }
}
