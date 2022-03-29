import 'package:flutter/material.dart';
import 'package:lovelive_music_app/pages/home/header.dart';
import 'package:lovelive_music_app/pages/home/musician_banner.dart';
import 'package:lovelive_music_app/pages/weiget/header_section.dart';
import 'package:lovelive_music_app/pages/weiget/music_list.dart';
import 'package:lovelive_music_app/pages/weiget/square_card.dart';

import '../weiget/scrollable_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: const <Widget>[
                Header(),
                SizedBox(height: 40),
                MusicianBanner(
                  title: '热榜音乐人',
                ),
                SizedBox(height: 40),
                HeaderSection(title: "推荐歌单"),
                ScrollableSection(
                  children: [
                    SquareCard(
                      title: '心流歌单',
                      image: 'assets/images/album.png',
                      description: '歌单描述',
                    ),
                    SquareCard(
                      title: '心流歌单',
                      image: 'assets/images/album.png',
                      description: '歌单描述',
                    ),
                    SquareCard(
                      title: '心流歌单',
                      image: 'assets/images/album.png',
                      description: '歌单描述',
                    )
                  ],
                ),
                SizedBox(height: 40),
                HeaderSection(title: "推荐专辑"),
                ScrollableSection(
                  children: [
                    SquareCard(
                      title: '心流歌单',
                      image: 'assets/images/album.png',
                      description: '歌单描述',
                    ),
                    SquareCard(
                      title: '心流歌单',
                      image: 'assets/images/album.png',
                      description: '歌单描述',
                    ),
                    SquareCard(
                      title: '心流歌单',
                      image: 'assets/images/album.png',
                      description: '歌单描述',
                    )
                  ],
                ),
                SizedBox(height: 40),
                HeaderSection(title: "推荐电台"),
                ScrollableSection(
                  children: [
                    SquareCard(
                      title: '心流歌单',
                      image: 'assets/images/album.png',
                      description: '歌单描述',
                    ),
                    SquareCard(
                      title: '心流歌单',
                      image: 'assets/images/album.png',
                      description: '歌单描述',
                    ),
                    SquareCard(
                      title: '心流歌单',
                      image: 'assets/images/album.png',
                      description: '歌单描述',
                    )
                  ],
                ),
                SizedBox(height: 40),
                HeaderSection(title: "最近播放"),
                MusicList()
              ],
            )));
  }
}
