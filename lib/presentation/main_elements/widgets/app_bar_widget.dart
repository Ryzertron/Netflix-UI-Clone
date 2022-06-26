import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_flix/core/colors/constant_colors.dart';

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
