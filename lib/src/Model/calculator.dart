import 'package:mate/mate.dart';

class Calculator {
  var stringBuffer = '';
  var answerBuffer = '';
  final Mate parser = Mate();

  String evaluateExpression() {
    final result = parser.calculate(stringBuffer);
    answerBuffer = result.toString();
    return '0';
  }

  String
}
