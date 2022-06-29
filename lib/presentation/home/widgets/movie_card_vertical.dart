import 'package:flutter/material.dart';

class HomePageMovieCard extends StatelessWidget {
  const HomePageMovieCard({Key? key}) : super(key: key);

  /// This class defines the basic movie card template. This class is passed to the
  /// MovieListHorizontal class for creating horizontal scrollable list especially in ScreenHome.
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: 150,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://image.tmdb.org/t/p/w300_and_h450_bestv2/7UGmn8TyWPPzkjhLUW58cOUHjPS.jpg'),
          ),
        ),
      ),
    );
  }
}
