import 'package:flutter/material.dart';
import 'package:ui_flix/core/colors/colors.dart';
import 'package:ui_flix/presentation/main_elements/screen_base.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // root
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        ),
        backgroundColor: backgroundColor,
        primarySwatch: Colors.blue,
      ),
      home: ScreenBase(),
    );
  }
}
