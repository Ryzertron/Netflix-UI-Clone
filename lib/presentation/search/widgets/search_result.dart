import 'package:flutter/cupertino.dart';
import 'package:ui_flix/presentation/main_elements/widgets/movie_category_title.dart';

/// This is the template for showing the search results to the user. This will
/// display a group of SearchResultCard widget containing the results in a scrollable 2D grid.

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CategoryTitle(headline: 'Movies & TV'),
        Expanded(
          child: GridView.count(
            childAspectRatio: 2/3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            shrinkWrap: true,
            crossAxisCount: 3,
            children: List.generate(10, (index) {
              return SearchResultCard(
                id: index,
              );
            }),
          ),
        ),
      ],
    );
  }
}

/// This class defines the template of the Movie thumbnail shown on the SearchResults page.
class SearchResultCard extends StatelessWidget {
  const SearchResultCard({Key? key, required this.id}) : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: const DecorationImage(fit: BoxFit.cover,image: NetworkImage('https://image.tmdb.org/t/p/w300_and_h450_bestv2/qJRB789ceLryrLvOKrZqLKr2CGf.jpg'))),
    );
  }
}
