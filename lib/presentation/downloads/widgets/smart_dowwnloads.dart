import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_flix/core/colors/constant_colors.dart';

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Icon(color: whitecolor, Icons.settings_suggest_outlined),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 5),
          child: Text(
            'Smart Downloads',
            style: GoogleFonts.montserrat(
                fontSize: 13, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}