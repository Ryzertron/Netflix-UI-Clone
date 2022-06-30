import 'package:flutter/material.dart';


/// A template for the description section in film details.

class FilmOverview extends StatelessWidget {
  const FilmOverview({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'No Time To Die',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        SizedBox(height: size.height * 0.01),
        Text(
          overflow: TextOverflow.visible,
          "James Bond is enjoying a tranquil life in Jamaica after leaving active service. However, his peace is short-lived as his old CIA friend, Felix Leiter, shows up and asks for help. The mission to rescue a kidnapped scientist turns out to be far more treacherous than expected, leading Bond on the trail of a mysterious villain who's armed with a dangerous new technology.",
          style: TextStyle(color: Colors.grey[600]),
        ),
      ],
    );
  }
}