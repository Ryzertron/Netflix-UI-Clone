import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_flix/presentation/hot&new/widgets/film_overview.dart';
import 'package:ui_flix/presentation/hot&new/widgets/teaser_video.dart';

/// This class is one of the output for TabView in ScreenHotAndNew.

class ComingSoonList extends StatelessWidget {
  const ComingSoonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView(
      children: List.generate(10, (index) => _ComingSoonEntity(size: size)),
    );
  }
}

/// This is the template for the item in ComingSoonList class

class _ComingSoonEntity extends StatelessWidget {
  const _ComingSoonEntity({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: AspectRatio(
        aspectRatio: 12 / 13,
        child: Row(
          children: [
            SizedBox(
              width: size.width * 0.12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'FEB',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.grey),
                  ),
                  Text(
                    '11',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 47,
                        letterSpacing: -1),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TeaserVideo(size: size),
                    SizedBox(height: size.height * 0.03),
                    Row(
                      children: [
                        const Text(
                          'No Time To Die',
                          style: TextStyle(fontSize: 35),
                        ),
                        const Spacer(),
                        TextButton(
                          style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          onPressed: () {},
                          child: Column(
                            children: const [
                              Icon(
                                Icons.notifications_none,
                                size: 28,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Remind Me',
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          onPressed: () {},
                          child: Column(
                            children: const [
                              Icon(
                                Icons.info_outline,
                                size: 25,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Info',
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Text('Coming on Friday'),
                    SizedBox(height: size.height * 0.03),
                    FilmOverview(size: size),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



