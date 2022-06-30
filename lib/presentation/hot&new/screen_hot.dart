import 'package:flutter/material.dart';
import 'package:ui_flix/presentation/hot&new/widgets/app_bar.dart';
import 'package:ui_flix/presentation/hot&new/widgets/coming_soon_list.dart';
import 'package:ui_flix/presentation/hot&new/widgets/everyone_watching_entity.dart';

/// This is the base screen of New & Hot page.

class ScreenHotandNew extends StatelessWidget {
  const ScreenHotandNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(size.height * 0.14),
          child: const Padding(
            padding: EdgeInsets.all(3.0),
            child: AppBarForScreenHot(),
          ),
        ),
        body: const TabBarView(
          children: [
            ComingSoonList(),
            EveryoneWatchingList(),
          ],
        ),
      ),
    );
  }
}
