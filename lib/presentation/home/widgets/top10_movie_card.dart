import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_flix/core/constant_values.dart';
import 'package:ui_flix/presentation/search/widgets/search_idle.dart';


/// This class includes a basic card set for the Top 10 movies List.
/// We are implementing the stack widget to create this Card.
/// This Card is only a blue print for the Top10MovieList widget.

class Top10MovieCard extends StatelessWidget {
  const Top10MovieCard({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
            ),
            Container(
              width: 150,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      idleImageListUrl[index]),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: -35,
          left: -10,
          child: BorderedText(
            strokeWidth: 5,
            strokeColor: whitecolor.withOpacity(0.8),
            child: Text(
              '${index+1}',
              style: GoogleFonts.robotoMono(
                fontSize: 140,
                letterSpacing: -20,
                fontWeight: FontWeight.bold,
                color: blackColor,
                decoration: TextDecoration.none,
              )
              ),
          ),
        ),
      ],
    );
  }
}
