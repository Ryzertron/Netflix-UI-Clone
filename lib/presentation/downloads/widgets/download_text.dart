import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// A Documentation text displayed on the Downloads page.

class DownloadsText extends StatelessWidget {
  const DownloadsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.width * 0.07),
        Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            fontSize: 27,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: size.width * 0.02,
        ),
        const Text(
          'We will download a personalised selection of\nmovies and shows for you, so there is\nalways something to watch on your\ndevice',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
          ),
        ),
        SizedBox(height: size.width * 0.01),
      ],
    );
  }
}