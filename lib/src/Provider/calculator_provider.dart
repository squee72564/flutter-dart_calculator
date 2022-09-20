import 'dart:math';

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

  void evaluateButtonPress(String buttonCharacter) {
    final stringBuffer = () {
      if (state.stringBuffer == '-') {
        return '0';
      }
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
        case '+':
        case '-':
        case '/':
        case '*':
          if (state.stringBuffer
              .substring(state.stringBuffer.length - 1)
              .contains(RegExp(r'[+-/*]'))) {
            return state.stringBuffer;
          } else if (state.stringBuffer == '0') {
            if (state.answerBuffer.contains(RegExp(r'(null|Infinity)'))) {
              return '0';
            } else {
              return state.answerBuffer + buttonCharacter;
            }
          } else {
            state.isDecimalAllowed = true;
            return state.stringBuffer + buttonCharacter;
          }
        case '.':
          if (state.isDecimalAllowed &&
              !state.stringBuffer
                  .substring(state.stringBuffer.length - 1)
                  .contains(RegExp(r'[+-/*]'))) {
            state.isDecimalAllowed = false;
            return state.stringBuffer + buttonCharacter;
          } else {
            return state.stringBuffer;
          }

        case '+/-':
          if (state.stringBuffer == '0') {
            return state.stringBuffer;
          } else if (state.stringBuffer.startsWith("-")) {
            return state.stringBuffer.substring(1);
          } else {
            return '-${state.stringBuffer}';
          }
        case 'DEL':
          if (state.stringBuffer.length == 1) {
            return '0';
          } else {
            if (state.stringBuffer.substring(state.stringBuffer.length - 1) ==
                '.') {
              state.isDecimalAllowed = true;
            }
            return state.stringBuffer
                .substring(0, state.stringBuffer.length - 1);
          }
        case '=':
          final double? result = parser.calculate(state.stringBuffer);
          state.answerBuffer = result.toString();
          return '0';
        case 'x^2':
          state.stringBuffer += '+ 0';
          final double? result = parser.calculate(state.stringBuffer);
          if (result != null) {
            double temp = result * result;
            state.answerBuffer = temp.toString();
            return '0';
          } else {
            state.answerBuffer = 'err x^2';
            return '0';
          }
        case '1/x':
          state.stringBuffer += '+ 0';
          final double? result = parser.calculate(state.stringBuffer);
          if (result != null) {
            double temp = 1 / result;
            state.answerBuffer = temp.toString();
            return '0';
          } else {
            state.answerBuffer = 'err 1/x';
            return '0';
          }
        case 'sqrt':
          state.stringBuffer += '+ 0';
          final double? result = parser.calculate(state.stringBuffer);
          if (result != null) {
            double temp = sqrt(result);
            state.answerBuffer = temp.toString();
            return '0';
          } else {
            state.answerBuffer = 'err sqrt';
            return '0';
          }
        case 'C':
          state.answerBuffer = '0';
          state.isDecimalAllowed = true;
          return '0';
        case 'CE':
          state.isDecimalAllowed = true;
          return '0';
        default:
          return state.stringBuffer;
      }
    }();

    state = state.copy(
        isDecimalAllowed: state.isDecimalAllowed,
        stringBuffer: stringBuffer == '-' ? '0' : stringBuffer,
        stringBuffer2: state.stringBuffer2,
        answerBuffer: state.answerBuffer);
  }
}
