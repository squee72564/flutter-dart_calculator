import 'package:flutter/material.dart';
import 'package:flutter_app1/src/Provider/calculator_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalcDisplay extends ConsumerStatefulWidget {
  const CalcDisplay({super.key});

  @override
  _CalcDisplayState createState() => _CalcDisplayState();
}

class _CalcDisplayState extends ConsumerState<CalcDisplay> {
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const RadialGradient(
          center: Alignment(0, 0),
          radius: .9,
          colors: <Color>[
            Color.fromARGB(255, 22, 22, 65),
            Color(0xFF111133),
          ],
          stops: <double>[0.9, 1.0],
        ),
      ),
      child: Consumer(
        builder: (context, ref, child) {
          final state = ref.watch(calculatorProvider);
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                state.stringBuffer,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white, fontSize: 25),
                maxLines: 3,
              ),
              Spacer(flex: 2),
              Text(
                state.answerBuffer,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Color.fromARGB(199, 255, 255, 255), fontSize: 25),
                maxLines: 3,
              ),
            ],
          );
        },
      ),
    );
  }
}
