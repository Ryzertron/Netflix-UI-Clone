import 'package:flutter/material.dart';
import 'package:ui_flix/presentation/fast_laugh/widgets/video_list_item.dart';

/// This is the base screen of the Fast Laughs page.

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: List.generate(
        10,
        (index) {
          return VideoListItem(
            color: index % Colors.accents.length,
          );
        },
      ),
    );
  }
}
