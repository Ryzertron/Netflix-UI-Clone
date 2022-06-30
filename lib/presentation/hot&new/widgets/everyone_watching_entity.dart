import 'dart:math';
import 'package:flutter/material.dart';
import 'package:ui_flix/presentation/hot&new/widgets/film_overview.dart';
import 'package:ui_flix/presentation/hot&new/widgets/teaser_video.dart';

/// This class is one of the output for TabView in ScreenHotAndNew.

class EveryoneWatchingList extends StatelessWidget {
  const EveryoneWatchingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ListView(
        children: 
        List.generate(10, (index) => _EveryoneWatchingEntity(size: size)),
      ),
    );
  }
}

/// This is the template of the item in EveryoneWatchingList class

class _EveryoneWatchingEntity extends StatelessWidget {
  const _EveryoneWatchingEntity({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 12 / 13,
      child: SizedBox(
        child: Column(
          children: [
            TeaserVideo(size: size),
            SizedBox(
              height: size.height * 0.01,
            ),
            Row(
              children: [
                LimitedBox(
                  maxWidth: size.width * 0.3,
                  maxHeight: size.width * 0.15,
                  child: Container(
                    width: size.width * 0.25,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: NetworkImage(
                          'https://image.tmdb.org/t/p/w500_and_h282_face/yeqOjNBaqp33po9yZyAzD8FGn6w.jpg',
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                const _RotatedButton(
                    label: 'Share', symbol: Icons.send_outlined),
                const _CustomActionButton(symbol: Icons.add, label: 'My List'),
                const _CustomActionButton(
                    symbol: Icons.play_arrow, label: 'Play')
              ],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            FilmOverview(size: size),
          ],
        ),
      ),
    );
  }
}

/// Custom Edited button widget for EveryoneWatchingEntity class.

class _CustomActionButton extends StatelessWidget {
  const _CustomActionButton(
      {Key? key, required this.symbol, required this.label})
      : super(key: key);

  final IconData symbol;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style:
          ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.white)),
      onPressed: () {},
      child: Column(
        children: [
          buildSymbol(),
          const SizedBox(
            height: 6,
          ),
          Text(
            label,
            style: const TextStyle(fontSize: 13),
          ),
        ],
      ),
    );
  }

  Widget buildSymbol() {
    return Icon(
      symbol,
      size: 28,
    );
  }
}

/// A special case of the _CustomActionButton class made to rotate the Share Button.

class _RotatedButton extends _CustomActionButton {
  // ignore: use_key_in_widget_constructors
  const _RotatedButton({required super.symbol, required super.label});

  @override
  Widget buildSymbol() {
    return Transform.rotate(
      angle: -pi / 4,
      child: Icon(
        symbol,
        size: 28,
      ),
    );
  }
}
