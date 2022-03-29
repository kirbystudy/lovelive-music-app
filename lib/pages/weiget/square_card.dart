import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lovelive_music_app/theme.dart';

class SquareCard extends StatelessWidget {
  const SquareCard(
      {Key? key,
      required this.title,
      required this.description,
      required this.image})
      : super(key: key);

  final String title, description, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
              width: 120,
              height: 120,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(120))),
              child: Image.asset(image)),
          Text(title, style: primaryText),
          const SizedBox(height: 5),
          Text(
            description,
            style: secondaryText,
          )
        ],
      ),
    );
  }
}
