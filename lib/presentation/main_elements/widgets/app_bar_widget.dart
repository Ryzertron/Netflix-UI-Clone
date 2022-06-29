import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_flix/core/constant_values.dart';

/// This class defines a custom app bar widget for our application.
/// It can be used in any of the screen by passing the title of the screen we
/// intend to use. This will prevent the redundancy as the app bar always has
/// the cast icon and the avatar in every page.

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            title,
            style:
                GoogleFonts.openSans(fontSize: 30, fontWeight: FontWeight.bold),
          ),

          const Spacer(),
          // ignore: prefer_const_constructors
          Icon(size: 30, color: whitecolor, Icons.cast),
          const SizedBox(
            width: 20,
          ),
          Container(
            width: 30,
            height: 30,
            color: Colors.blue,
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
