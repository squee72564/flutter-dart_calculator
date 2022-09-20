import 'package:flutter_app1/src/Model/calculator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mate/mate.dart';

final Mate parser = Mate();

final calculatorProvider =
    StateNotifierProvider<CalculatorNotifier, Calculator>((ref) {
  return CalculatorNotifier();
});

class CalculatorNotifier extends StateNotifier<Calculator> {
  CalculatorNotifier() : super(Calculator());

  void appendButton(String buttonCharacter) {
    final stringBuffer = () {
      switch (buttonCharacter) {
        case '0':
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9':
          return state.stringBuffer == '0'
              ? buttonCharacter
              : state.stringBuffer + buttonCharacter;
        default:
          return state.stringBuffer;
      }
    }();

    state = state.copy(
        stringBuffer: stringBuffer, answerBuffer: state.answerBuffer);
  }
}
