class Calculator {
  String stringBuffer;
  String answerBuffer;

  Calculator({
    this.stringBuffer = '0',
    this.answerBuffer = '0',
  });

  Calculator copy({
    required String stringBuffer,
    required String answerBuffer,
  }) =>
      Calculator(
        stringBuffer: stringBuffer,
        answerBuffer: answerBuffer,
      );
}
