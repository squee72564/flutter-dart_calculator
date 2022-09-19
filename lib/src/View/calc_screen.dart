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
    return Expanded(
      child: Container(
        constraints: BoxConstraints.expand(),
        color: Colors.black,
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'wqeqweqweqwe',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white, fontSize: 36),
            ),
          ],
        ),
      ),
    );
  }
}
