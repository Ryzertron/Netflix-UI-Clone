import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_flix/presentation/main_elements/widgets/movie_category_title.dart';

const idleImageListUrl = [
  'https://image.tmdb.org/t/p/w533_and_h300_bestv2/r2GAjd4rNOHJh6i6Y0FntmYuPQW.jpg',
  'https://image.tmdb.org/t/p/w533_and_h300_bestv2/egoyMDLqCxzjnSrWOz50uLlJWmD.jpg',
  'https://image.tmdb.org/t/p/w533_and_h300_bestv2/nvxrQQspxmSblCYDtvDAbVFX8Jt.jpg',
  'https://image.tmdb.org/t/p/w533_and_h300_bestv2/qK7Ssnrfvrt65F66A1thvehfQg2.jpg',
  'https://image.tmdb.org/t/p/w533_and_h300_bestv2/v0zhVgtqisaFsSVAOKxqwVOOlQr.jpg',
  'https://image.tmdb.org/t/p/w533_and_h300_bestv2/wo3l9p0S7pcvwlzlndtKgq0peRJ.jpg',
  'https://image.tmdb.org/t/p/w533_and_h300_bestv2/AjQgFtfXTmmMVuaH2VfQDdGbeQH.jpg',
  'https://image.tmdb.org/t/p/w533_and_h300_bestv2/oE6bhqqVFyIECtBzqIuvh6JdaB5.jpg',
  'https://image.tmdb.org/t/p/w533_and_h300_bestv2/pxOiKwRvNp3zFOiuwpYpzlbmEgC.jpg',
  'https://image.tmdb.org/t/p/w533_and_h300_bestv2/d0mpUFKzoPwF1KsdjHpkkaYSvKm.jpg',
  'https://image.tmdb.org/t/p/w533_and_h300_bestv2/yizL4cEKsVvl17Wc1mGEIrQtM2F.jpg',
  'https://image.tmdb.org/t/p/w533_and_h300_bestv2/8s4h9friP6Ci3adRGahHARVd76E.jpg',
  'https://image.tmdb.org/t/p/w533_and_h300_bestv2/7WJjFviFBffEJvkAms4uWwbcVUk.jpg',
  'https://image.tmdb.org/t/p/w533_and_h300_bestv2/7py8kUCYaOdFn1TfVS87BDBySOz.jpg',
  'https://image.tmdb.org/t/p/w533_and_h300_bestv2/pFwvHAFyPEqtvJEoutPuobLwrNj.jpg',
  'https://image.tmdb.org/t/p/w533_and_h300_bestv2/1Ds7xy7ILo8u2WWxdnkJth1jQVT.jpg',
  'https://image.tmdb.org/t/p/w533_and_h300_bestv2/gG9fTyDL03fiKnOpf2tr01sncnt.jpg',
  'https://image.tmdb.org/t/p/w533_and_h300_bestv2/wcKFYIiVDvRURrzglV9kGu7fpfY.jpg',
];
const idleImageListName = [
  'No Time To Die',
  'Sonic 2 The Hedgehog',
  "Dont't look up",
  "Chip'N Dale : Rescue Rangers",
  'The Last Duel',
  'Jurassic World : Dominion',
  'Narco Sub',
  'Finch',
  'Boss Baby : Family Buisness',
  'The Harder They Fall',
  'The Tomorrow War',
  'Space Jam : The Legacy',
  'Jungle Cruise',
  'Free Guy',
  'Fireheart',
  'The Lost City',
  'Morbius',
  'Doctor Strange in the Multiverse of Madness'
];

/// This is the widget showing the suggestions or Top Searches to the user
/// when the user first enters the search page. It returns a list of rows 
/// each containing a TopSearchTile widget holding a thumbnail, a Text widget
///  holding the title and a Play Button. 

class SearchIdle extends StatelessWidget {
  const SearchIdle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CategoryTitle(headline: 'Top Searches',),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: ((context, index) => TopSearchTile(id: index)),
            separatorBuilder: (ctx, index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount: idleImageListUrl.length,
          ),
        )
      ],
    );
  }
}

/// This class defines the template of the thumbnail to be shown 
/// on the SearchIdle page.
class TopSearchTile extends StatelessWidget {
  const TopSearchTile({Key? key, required this.id}) : super(key: key);
  final int id;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(children: [
      Container(
        width: size.width * 0.3,
        height: size.width * 0.2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(idleImageListUrl[id]))),
      ),
      SizedBox(
        width: size.width * 0.05,
      ),
      Expanded(
        child: Text(
          idleImageListName[id],
          style:
              GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(right: 10.0),
        child: Icon(Icons.play_circle_outline_rounded,
            color: Colors.white, size: 45),
      ),
    ]);
  }
}
