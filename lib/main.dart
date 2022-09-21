import 'package:flutter/material.dart';
import 'src/app_init.dart';
import 'package:window_size/window_size.dart';
import 'dart:io';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('Calculator');
    setWindowMinSize(const Size(400, 800));
    setWindowMaxSize(Size.infinite);
  }

  runApp(
    const CalculatorAppConfigure(),
  );
}
