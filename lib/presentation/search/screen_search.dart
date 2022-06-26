import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_flix/core/colors/constant_colors.dart';
import 'package:ui_flix/presentation/search/widgets/search_idle.dart';
import 'package:ui_flix/presentation/search/widgets/search_result.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              _SearchBar(),
              // Expanded(child: SearchIdle()),
              Expanded(child: SearchResult()),
            ],
          ),
        ),
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: CupertinoSearchTextField(
        prefixIcon: const Icon(CupertinoIcons.search, color: Colors.grey),
        suffixIcon: const Icon(Icons.clear_rounded, color: Colors.grey),
        backgroundColor: Colors.grey[850],
        style: const TextStyle(color: Colors.white),
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }
}
