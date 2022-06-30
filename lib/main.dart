import 'package:flutter/material.dart';
import 'package:ui_flix/core/constant_values.dart';
import 'package:ui_flix/presentation/main_elements/screen_base.dart';

/// Main function
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // root
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: CustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: whitecolor),
          bodyText2: TextStyle(color: whitecolor),
        ),
        backgroundColor: backgroundColor,
        primarySwatch: Colors.grey,
      ),
      home: ScreenBase(),
    );
  }
}

class CustomScrollBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return StretchingOverscrollIndicator(
      axisDirection: details.direction,
      child: child,
    );
  }
}
