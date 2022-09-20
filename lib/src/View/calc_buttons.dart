import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../Provider/calculator_provider.dart';

//Widget for individual Calculator Button
class CalcButton extends ConsumerWidget {
  final Color color;
  final String buttonText;
  final buttontapped;

  const CalcButton(
      {super.key,
      required this.color,
      required this.buttonText,
      this.buttontapped});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(4),
        child: ElevatedButton(
          onPressed: buttontapped,
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(11),
            ),
          ),
          child: FittedBox(
            child: Text(
              buttonText,
              overflow: TextOverflow.fade,
              textScaleFactor: 10,
              textAlign: TextAlign.center,
              style: const TextStyle(
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
class CalcRow extends ConsumerStatefulWidget {
  final List<Color> buttonColors;
  final List<String> buttonTexts;

  const CalcRow({
    super.key,
    required this.buttonColors,
    required this.buttonTexts,
  });

  @override
  _CalcRowState createState() => _CalcRowState();
}

class _CalcRowState extends ConsumerState<CalcRow> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CalcButton(
            color: widget.buttonColors[0],
            buttonText: widget.buttonTexts[0],
            buttontapped: () {
              setState(() {
                onButtonClick(widget.buttonTexts[0]);
              });
            },
          ),
          CalcButton(
            color: widget.buttonColors[1],
            buttonText: widget.buttonTexts[1],
            buttontapped: () {
              setState(() {
                onButtonClick(widget.buttonTexts[1]);
              });
            },
          ),
          CalcButton(
            color: widget.buttonColors[2],
            buttonText: widget.buttonTexts[2],
            buttontapped: () {
              setState(() {
                onButtonClick(widget.buttonTexts[2]);
              });
            },
          ),
          CalcButton(
            color: widget.buttonColors[3],
            buttonText: widget.buttonTexts[3],
            buttontapped: () {
              setState(() {
                onButtonClick(widget.buttonTexts[3]);
              });
            },
          ),
        ],
      ),
    );
  }

  void onButtonClick(String buttonCharacter) {
    final calculator = ref.read(calculatorProvider.notifier);

    calculator.evaluateButtonPress(buttonCharacter);
  }
}
