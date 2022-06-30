import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_flix/core/constant_values.dart';
import 'package:ui_flix/presentation/main_elements/widgets/app_bar_widget.dart';

/// This is a customised app bar derived from CustomAppBar class selectively
/// for New & Hot page.

class AppBarForScreenHot extends StatelessWidget {
  const AppBarForScreenHot({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(title: 'New & Hot'),
        TabBar(
          tabs: [
            Tab(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '🍿 Coming Soon',
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
            Tab(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("👀 Everyone's Watching",style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold, fontSize: 15),),
              ),
            )
          ],
          splashBorderRadius: BorderRadius.circular(40),
          isScrollable: true,
          indicatorPadding: const EdgeInsets.symmetric(horizontal: 15),
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: const BoxDecoration(
            color: whitecolor,
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          unselectedLabelColor: whitecolor,
        ),
      ],
    );
  }
}
