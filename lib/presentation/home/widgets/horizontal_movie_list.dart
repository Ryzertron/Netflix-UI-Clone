import 'package:flutter/material.dart';
import 'package:ui_flix/presentation/home/widgets/movie_card_vertical.dart';
import 'package:ui_flix/presentation/main_elements/widgets/movie_category_title.dart';

/// This class creates a horizontal list of HomePageMovieCard widget which is
/// widely used throughout the ScreenHome class.

class MovieListHorizontal extends StatelessWidget {
  const MovieListHorizontal({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
     /// Notification Listener will handle and block the scroll notification
    /// so it won't interfere with the DynamicAppBar class.
    return NotificationListener<UserScrollNotification>(
      onNotification: ((notification) => true),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoryTitle(headline: title),
            LimitedBox(
              maxHeight: 250,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: 
                  List.generate(10, (index) => const HomePageMovieCard())
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}