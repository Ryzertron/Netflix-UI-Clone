import 'package:flutter/material.dart';
import 'package:ui_flix/presentation/downloads/widgets/button_widget.dart';
import 'package:ui_flix/presentation/downloads/widgets/display_image.dart';
import 'package:ui_flix/presentation/downloads/widgets/download_text.dart';
import 'package:ui_flix/presentation/downloads/widgets/smart_dowwnloads.dart';
import 'package:ui_flix/presentation/main_elements/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({Key? key}) : super(key: key);

  final _widgetList = [
    const SmartDownloads(),
    const DownloadsText(),
    ImageDisplaySet(),
    const ButtonSet()
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
          padding: const EdgeInsets.all(10),
          itemCount: _widgetList.length,
          itemBuilder: (BuildContext context, int index) => _widgetList[index]),
    );
  }
}






