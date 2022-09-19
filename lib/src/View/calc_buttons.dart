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
    return Expanded(
      child: Container(
        height: 80,
        margin: const EdgeInsets.all(4),
        child: ElevatedButton(
          onPressed: buttontapped,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 156, 167, 177),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            buttonText,
            overflow: TextOverflow.fade,
            textScaleFactor: 2.5,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
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
  late String buttonTapped;

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
            setState(() {});
          },
        ),
        CalcButton(
          color: widget.buttonColors[1],
          buttonText: widget.buttonTexts[1],
          buttontapped: () {
            setState(() {});
          },
        ),
        CalcButton(
          color: widget.buttonColors[2],
          buttonText: widget.buttonTexts[2],
          buttontapped: () {
            setState(() {});
          },
        ),
        CalcButton(
          color: widget.buttonColors[3],
          buttonText: widget.buttonTexts[3],
          buttontapped: () {
            setState(() {});
          },
        ),
      ],
    );
  }
}
