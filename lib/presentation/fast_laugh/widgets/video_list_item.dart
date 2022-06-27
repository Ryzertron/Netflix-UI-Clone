import 'package:flutter/material.dart';
import 'package:ui_flix/core/colors/constant_colors.dart';

class VideoListItem extends StatelessWidget {
  const VideoListItem({Key? key, required this.color}) : super(key: key);

  final int color;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[color],
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black54,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.volume_off,size: 30,)))
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: const [
                CircleAvatar(radius: 35,backgroundImage: NetworkImage('https://image.tmdb.org/t/p/w300_and_h450_bestv2/qJRB789ceLryrLvOKrZqLKr2CGf.jpg'),),
                SizedBox(height: 5,),
                VideoActions(icon: Icons.emoji_emotions_rounded, title: 'LOL'),
                VideoActions(icon: Icons.add, title: 'My List'),
                VideoActions(icon: Icons.share_rounded, title: 'Share'),
                VideoActions(icon: Icons.play_arrow, title: 'Play'),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActions extends StatelessWidget {
  final IconData icon;
  final String title;

  const VideoActions({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        children: [
          Icon(icon,color: whitecolor,size: 40,),
          Text(title,style: const TextStyle(fontSize: 16),),
        ],
      ),
    );
  }
}
