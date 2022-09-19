import 'package:flutter/material.dart';

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
          width: 100,
          height: 100,
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
class CalcRow extends StatefulWidget {
  final List<Color> buttonColors;
  final List<String> buttonTexts;
  late final int buttonTapped;
   
  CalcRow({
    super.key,
    required this.buttonColors,
    required this.buttonTexts,
  });

@override
  _CalcRowState createState() => _CalcRowState();
}

class _CalcRowState extends State<CalcRow> {

@override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CalcButton(
          color: widget.buttonColors[0],
          buttonText: widget.buttonTexts[0],
          buttontapped: () {
            setState(() {
              
            });
          },
        ),
        CalcButton(
          color: widget.buttonColors[1],
          buttonText: widget.buttonTexts[1],
          buttontapped: () {
            setState(() {
              
            });
          },
        ),
        CalcButton(
          color: widget.buttonColors[2],
          buttonText: widget.buttonTexts[2],
          buttontapped: () {
            setState(() {
              
            });
          },
        ),
        CalcButton(
          color: widget.buttonColors[3],
          buttonText: widget.buttonTexts[3],
          buttontapped: () {
            setState(() {
              
            });
          },
        ),
      ],
    );
  }
}