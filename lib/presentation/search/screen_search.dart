import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_flix/presentation/search/widgets/search_idle.dart';

/// This is the base screen of the Search Page.

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          _SearchBar(),
          Expanded(child: SearchIdle()),
          // Expanded(child: SearchResult()),
        ],
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
