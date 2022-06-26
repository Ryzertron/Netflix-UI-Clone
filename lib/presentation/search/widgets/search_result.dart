import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_flix/presentation/search/widgets/search_headline.dart';
import 'package:ui_flix/presentation/search/widgets/search_idle.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchHeadline(headline: 'Movies & TV'),
        Expanded(
          child: GridView.count(
            childAspectRatio: 2/3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            shrinkWrap: true,
            crossAxisCount: 3,
            children: List.generate(10, (index) {
              return MainCard(
                id: index,
              );
            }),
          ),
        ),
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({Key? key, required this.id}) : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(fit: BoxFit.cover,image: NetworkImage('https://image.tmdb.org/t/p/w300_and_h450_bestv2/qJRB789ceLryrLvOKrZqLKr2CGf.jpg'))),
    );
  }
}
