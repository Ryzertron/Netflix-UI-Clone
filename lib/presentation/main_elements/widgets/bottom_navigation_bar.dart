import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_flix/core/colors/colors.dart';

ValueNotifier<int> bottomNavigationIndex = ValueNotifier(0);

class BottomNavigator extends StatelessWidget {
  const BottomNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: bottomNavigationIndex,
      builder: (BuildContext context, int newIndex, Widget? _) {
        return BottomNavigationBar(
          onTap: (index) {
            bottomNavigationIndex.value = index;
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: newIndex,
          backgroundColor: backgroundColor,
          selectedItemColor: whitecolor,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: const IconThemeData(color: whitecolor),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_rounded), label: 'New & Hot'),
            BottomNavigationBarItem(
                icon: Icon(Icons.emoji_emotions_outlined),
                label: 'Fast laughs'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.arrow_circle_down), label: 'Downloads'),
          ],
        );
      },
    );
  }
}
