import 'package:flutter/material.dart';
import 'package:ui_flix/presentation/home/widgets/top10_movie_card.dart';
import 'package:ui_flix/presentation/main_elements/widgets/movie_category_title.dart';

/// This class make use of Top10MovieCard and create a horizontal scrollable
/// list widget especially used in the ScreenHome class.

class Top10MovieListHorizontal extends StatelessWidget {
  const Top10MovieListHorizontal({Key? key,this.title = 'Top 10 TV Shows in India Today'}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    /// Notification Listener will handle and block the scroll notification
    /// so it won't interfere with the DynamicAppBar class.
    return NotificationListener<UserScrollNotification>(
      onNotification: ((notification) => true),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
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
                  List.generate(10, (index) => Top10MovieCard(index: index,))
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}