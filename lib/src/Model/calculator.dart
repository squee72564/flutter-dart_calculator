class Calculator {
  String stringBuffer;
  String stringBuffer2;
  String answerBuffer;
  bool isDecimalAllowed;

  Calculator({
    this.isDecimalAllowed = true,
    this.stringBuffer = '0',
    this.stringBuffer2 = '0',
    this.answerBuffer = '0',
  });

  Calculator copy({
    required bool isDecimalAllowed,
    required String stringBuffer,
    required String stringBuffer2,
    required String answerBuffer,
  }) =>
      Calculator(
        isDecimalAllowed: isDecimalAllowed,
        stringBuffer: stringBuffer,
        stringBuffer2: stringBuffer2,
        answerBuffer: answerBuffer,
      );
}
