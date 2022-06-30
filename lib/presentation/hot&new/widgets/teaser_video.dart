import 'package:flutter/material.dart';

/// Template for the video player in New and Hot page.

class TeaserVideo extends StatelessWidget {
  const TeaserVideo({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

// TODO Replace image with a video.
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: size.height * 0.25,
          child: Image.network(
            fit: BoxFit.cover,
            'https://image.tmdb.org/t/p/w533_and_h300_bestv2/r2GAjd4rNOHJh6i6Y0FntmYuPQW.jpg',
          ),
        ),
        Positioned(
          bottom: 8,
          right: 9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black87,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.volume_off,
                    size: 25,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
