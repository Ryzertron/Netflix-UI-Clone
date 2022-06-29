import 'package:flutter/material.dart';
import 'package:ui_flix/presentation/downloads/screen_downloads.dart';
import 'package:ui_flix/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:ui_flix/presentation/home/screen_home.dart';
import 'package:ui_flix/presentation/hot&new/screen_hot.dart';
import 'package:ui_flix/presentation/main_elements/widgets/bottom_navigation_bar.dart';
import 'package:ui_flix/presentation/search/screen_search.dart';

/// This is the root screen of the app all the screens are placed on top of this
/// screen. When the BottomNavigationBbar is tapped, the respective screen will be
/// placed on top of this screen

class ScreenBase extends StatelessWidget {
   ScreenBase({Key? key}) : super(key: key);

   final _pages = [
    const ScreenHome(),
    const ScreenHotandNew(),
    const ScreenFastLaugh(),
    const ScreenSearch(),
    ScreenDownloads(),
   ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: bottomNavigationIndex,
            builder: (BuildContext ctx, int index, Widget? _) {
              return SafeArea(child:_pages[index] );
            }),
      ),
      bottomNavigationBar: const BottomNavigator(),
    );
  }
}
