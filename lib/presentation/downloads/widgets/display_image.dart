import 'dart:math';

import 'package:flutter/material.dart';

/// A simple set of three images to be shown as a 
/// display background on the Downloads page.

class ImageDisplaySet extends StatelessWidget {
  ImageDisplaySet({Key? key}) : super(key: key);

  final imageset = [
    'https://image.tmdb.org/t/p/w300_and_h450_bestv2/qJRB789ceLryrLvOKrZqLKr2CGf.jpg',
    'https://image.tmdb.org/t/p/w300_and_h450_bestv2/7UGmn8TyWPPzkjhLUW58cOUHjPS.jpg',
    'https://image.tmdb.org/t/p/w300_and_h450_bestv2/lJA2RCMfsWoskqlQhXPSLFQGXEJ.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.width * 0.8,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey[850],
              radius: size.width * 0.37,
            ),
            DownloadDisplayImage(
              imageset: imageset[2],
              margin: EdgeInsets.only(top: 40, left: size.width * 0.52),
              angle: 15,
              size: Size(size.width * 0.34, size.width * 0.54),
            ),
            DownloadDisplayImage(
              imageset: imageset[1],
              margin: EdgeInsets.only(top: 40, right: size.width * 0.52),
              angle: -15,
              size: Size(size.width * 0.34, size.width * 0.54),
            ),
            DownloadDisplayImage(
              imageset: imageset[0],
              margin: const EdgeInsets.only(top: 43),
              angle: 0,
              size: Size(size.width * 0.39, size.width * 0.59),
            ),
          ],
        ),
      ),
    );
  }
}


/// The template of the image shown on the background of Downloads.

class DownloadDisplayImage extends StatelessWidget {
  const DownloadDisplayImage({
    Key? key,
    required this.imageset,
    this.angle = 0,
    required this.margin,
    required this.size,
  }) : super(key: key);
  final Size size;
  final String imageset;
  final double angle;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(imageset),
          ),
        ),
        width: size.width,
        height: size.height,
      ),
    );
  }
}