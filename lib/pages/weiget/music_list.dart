import 'package:flutter/material.dart';

import 'music_card.dart';

class MusicList extends StatelessWidget {
  const MusicList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Column(
        children: const <Widget>[
          MusicCard(
            name: '孤独者',
            cover: 'assets/images/music.png',
            album: '孤独者',
            artist: '陈奕迅',
          ),
          MusicCard(
            name: '孤独者',
            cover: 'assets/images/music.png',
            album: '孤独者',
            artist: '陈奕迅',
          ),
          MusicCard(
            name: '孤独者',
            cover: 'assets/images/music.png',
            album: '孤独者',
            artist: '陈奕迅',
          )
        ],
      ),
    );
  }
}
