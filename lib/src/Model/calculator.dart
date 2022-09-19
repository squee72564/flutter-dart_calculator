import 'package:mate/mate.dart';

class Calculator {
  var stringBuffer = '';
  var answerBuffer = '';
  final Mate parser = Mate();

  String _evaluateExpression() {
    final result = parser.calculate(stringBuffer);
    answerBuffer = result.toString();
    return '0';
  }

  getStringBuffer() {
    return stringBuffer;
  }

  getAnswerBuffer() {
    return answerBuffer;
  }

  void addCharacter(String s) {
    stringBuffer += s;
  }
}
