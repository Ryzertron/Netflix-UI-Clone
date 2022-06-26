import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchHeadline extends StatelessWidget {
  const SearchHeadline({
    Key? key, required this.headline,
  }) : super(key: key);

  final String headline;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        headline,
        style: GoogleFonts.roboto(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }
}
