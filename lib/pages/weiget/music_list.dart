import 'package:flutter/material.dart';

import '../../model/Music.dart';
import 'music_card.dart';

class MusicList extends StatelessWidget {
  const MusicList({
    Key? key,
    this.musicList = const <Music>[],
  }) : super(key: key);

  final List<Music> musicList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Column(
          children: musicList
              .map((item) => MusicCard(
                  cover: 'assets/images/music.png',
                  name: item.name,
                  album: "孤勇者",
                  artist: "陈奕迅"))
              .toList()),
    );
  }
}
