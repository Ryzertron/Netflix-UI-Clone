import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_flix/core/constant_values.dart';
import 'package:ui_flix/presentation/main_elements/widgets/app_bar_widget.dart';

/// This is the definition of the custom made app bar for Home Screen.

class DynamicAppBar extends StatelessWidget {
  const DynamicAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          tileMode: TileMode.clamp,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black,
            Colors.black87,
            Colors.black26,
            Colors.transparent
          ],
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0,),
            child: Row(
              children: [
                LimitedBox(
                  maxHeight: 60,
                  child: Image.network(
                      fit: BoxFit.contain,
                      'https://cdn.vox-cdn.com/thumbor/AwKSiDyDnwy_qoVdLPyoRPUPo00=/39x0:3111x2048/1400x1400/filters:focal(39x0:3111x2048):format(png)/cdn.vox-cdn.com/uploads/chorus_image/image/49901753/netflixlogo.0.0.png'),
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
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'TV Shows',
                  style: GoogleFonts.mPlusRounded1c(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Movies',
                  style: GoogleFonts.ptSans(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Categories',
                  style: GoogleFonts.roboto(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
