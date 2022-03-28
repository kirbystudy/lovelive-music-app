import 'package:flutter/material.dart';
import 'package:lovelive_music_app/pages/home/home_page.dart';
import 'package:lovelive_music_app/pages/login/login_page.dart';
import 'package:lovelive_music_app/theme.dart';

void main() {
  runApp(const LoveLiveMusic());
}

class LoveLiveMusic extends StatelessWidget {
  const LoveLiveMusic({Key? key}) : super(key: key);

  // 此小部件是应用程序的根。
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '小埋音乐',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //这是应用程序的主题。
        //试着用“颤振跑”来运行你的应用程序。你会看到
        //应用程序有一个蓝色的工具栏。然后，在不退出应用程序的情况下，尝试一下
        //将下面的主色样更改为颜色。绿色，然后调用
        //“热重新加载”（在运行“颤振跑”的控制台中按“r”，
        //或者简单地将更改保存到Flitter IDE中的“热重新加载”。
        //请注意，计数器没有重置回零；应用程序
        //不会重新启动。
        primarySwatch: primary,
        tabBarTheme: tabBarTheme
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/login': (context) => const LoginPage()
      },
    );
  }
}
