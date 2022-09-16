import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final color;
  final textColor;
  final String buttonText;
  final buttontapped;
 
  CalcButton({super.key, this.color, this.textColor, required this.buttonText, this.buttontapped});
 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttontapped,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          color: color,
          child: Text(
            buttonText,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}