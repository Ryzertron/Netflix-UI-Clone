import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ui_flix/presentation/home/widgets/dynamic_appbar.dart';
import 'package:ui_flix/presentation/home/widgets/featured_movie.dart';
import 'package:ui_flix/presentation/home/widgets/horizontal_movie_list.dart';
import 'package:ui_flix/presentation/home/widgets/horizontal_top10_list.dart';

ValueNotifier<bool> isScrollingForward = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  ///This is the Home Screen of the app. This screen is treated as the default screen.

  @override
  Widget build(BuildContext context) {
    // Listening to the ListView
    return NotificationListener<UserScrollNotification>(
      onNotification: (notification) {
        final ScrollDirection direction = notification.direction;
        if (direction == ScrollDirection.forward) {
          isScrollingForward.value = true;
        } else if (direction == ScrollDirection.reverse) {
          isScrollingForward.value = false;
        }
        return true;
      },
      child: Stack(
        children: [
          ListView(
            children: const [
              SizedBox(
                height: 40,
              ),
              FeaturedMovieCard(),
              MovieListHorizontal(title: 'Released in the Past Year'),
              MovieListHorizontal(title: 'Trending Now'),
              Top10MovieListHorizontal(),
              MovieListHorizontal(title: 'Tense Dramas'),
              MovieListHorizontal(title: 'Indian Cinema'),
            ],
          ),
          // Replacing AppBar according to the notification of List View.
          ValueListenableBuilder(
            valueListenable: isScrollingForward,
            builder: (BuildContext context, value, Widget? _) {
              final Widget widget;
              if (isScrollingForward.value) {
                widget = const DynamicAppBar();
              } else {
                widget = const SizedBox();
              }
              return AnimatedSwitcher(
                duration: const Duration(seconds: 1),
                child: widget,
              );
            },
          ),
        ],
      ),
    );
  }
}
