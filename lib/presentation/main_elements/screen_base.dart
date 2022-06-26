import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_flix/presentation/downloads/screen_downloads.dart';
import 'package:ui_flix/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:ui_flix/presentation/home/screen_home.dart';
import 'package:ui_flix/presentation/hot&new/screen_hot.dart';
import 'package:ui_flix/presentation/main_elements/widgets/bottom_navigation_bar.dart';
import 'package:ui_flix/presentation/search/screen_search.dart';

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
