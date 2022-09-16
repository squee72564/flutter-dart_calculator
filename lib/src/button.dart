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
      child: ,
    );
  }
}