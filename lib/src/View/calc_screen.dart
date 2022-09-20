import 'package:flutter/material.dart';
import 'package:flutter_app1/src/View/calc_buttons.dart';

class CalcDisplay extends StatefulWidget {
  const CalcDisplay({super.key});

  @override
  State<StatefulWidget> createState() => _CalcDisplayState();
}

class _CalcDisplayState extends State<CalcDisplay> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 0,
        maxHeight: 240,
        minWidth: double.infinity,
        maxWidth: double.infinity,
      ),
      padding: const EdgeInsets.all(30),
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment(0, 0),
          radius: .9,
          colors: <Color>[
            Color.fromARGB(255, 22, 22, 65),
            Color(0xFF111133),
          ],
          stops: <double>[0.9, 1.0],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '1',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.white, fontSize: 25),
            maxLines: 3,
          ),
          Spacer(flex: 2),
          Text(
            '1',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Color.fromARGB(199, 255, 255, 255), fontSize: 25),
            maxLines: 3,
          ),
        ],
      ),
    );
  }
}
