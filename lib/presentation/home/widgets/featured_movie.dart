import 'package:flutter/material.dart';

///This widget is shown on the top of HomePage.

class FeaturedMovieCard extends StatelessWidget {
  const FeaturedMovieCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 650,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://image.tmdb.org/t/p/w600_and_h900_bestv2/qsdjk9oAKSQMWs0Vt5Pyfh6O4GZ.jpg'))),
        ),
        Container(
          width: double.infinity,
          height: 650,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              radius: 0.7,
              tileMode: TileMode.clamp,
              colors: [
                Colors.black.withOpacity(0.0),
                Colors.black.withOpacity(0.9),
              ],
            ),
          ),
        ),
        Positioned(
          right: 0,
          left: 0,
          bottom: 10,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white)),
                  onPressed: () {},
                  child: Column(
                    children: const [
                      Icon(
                        Icons.add,
                        size: 30,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'My List',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    fixedSize: MaterialStateProperty.all(const Size(120, 40)),
                  ),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_arrow,
                    size: 40,
                  ),
                  label: const Text(
                    'Play',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white)),
                  onPressed: () {},
                  child: Column(
                    children: const [
                      Icon(
                        Icons.info_outline,
                        size: 30,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Info',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
