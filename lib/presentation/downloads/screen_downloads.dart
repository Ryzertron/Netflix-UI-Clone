import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_flix/core/colors/colors.dart';
import 'package:ui_flix/presentation/main_elements/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({Key? key}) : super(key: key);

  final _widgetList = [
    const _SmartDownloads(),
    const _DownloadsText(),
    ImageDisplaySet(),
    const _ButtonSet()
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(size.height * 0.1),
          child: const CustomAppBar(
            title: 'Downloads',
          )),
      body: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: _widgetList.length,
          itemBuilder: (BuildContext context, int index) => _widgetList[index]),
    );
  }
}

class _ButtonSet extends StatelessWidget {
  const _ButtonSet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 70,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)),
                    color: Colors.indigo,
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        'Set Up',
                        style: TextStyle(
                          color: whitecolor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 3,
        ),
        SizedBox(
          height: 45,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 2),
            child: MaterialButton(
              color: whitecolor,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text('See What You Can Download',
                    style: GoogleFonts.montserrat(
                        fontSize: 21, fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _DownloadsText extends StatelessWidget {
  const _DownloadsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.width * 0.07),
        Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            fontSize: 27,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: size.width * 0.02,
        ),
        const Text(
          'We will download a personalised selection of\nmovies and shows for you, so there is\nalways something to watch on your\ndevice',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
          ),
        ),
        SizedBox(height: size.width * 0.01),
      ],
    );
  }
}

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

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Icon(color: whitecolor, Icons.settings_suggest_outlined),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 5),
          child: Text(
            'Smart Downloads',
            style: GoogleFonts.montserrat(
                fontSize: 13, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

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
