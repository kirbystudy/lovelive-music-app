import 'package:flutter/material.dart';
import 'package:lovelive_music_app/api/hello.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // 此小部件是应用程序的根。
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //这是应用程序的主题。
        //试着用“颤振跑”来运行你的应用程序。你会看到
        //应用程序有一个蓝色的工具栏。然后，在不退出应用程序的情况下，尝试一下
        //将下面的主色样更改为颜色。绿色，然后调用
        //“热重新加载”（在运行“颤振跑”的控制台中按“r”，
        //或者简单地将更改保存到Flitter IDE中的“热重新加载”。
        //请注意，计数器没有重置回零；应用程序
        //不会重新启动。
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'LoveLive音乐播放器'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  //此小部件是应用程序的主页。它是有状态的，有意义的
  //它有一个状态对象（定义如下），其中包含影响
  //看起来怎么样。

  //此类是状态的配置。它保存了（在本例中）的值
  //案例名称）由家长（在本例中是应用程序小部件）提供，以及
  //由州的构建方法使用。小部件子类中的字段是
  //始终标记为“最终”。

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  String message = 'lovelive音乐';

  void _incrementCounter() {
    setState(() {
      //这个对setState的调用告诉颤振框架，有些东西
      //在此状态下发生更改，这会导致它重新运行下面的生成方法
      //以便显示屏能够反映更新后的值。如果我们改变
      //_计数器，而不调用setState（），则生成方法将不可用
      //再打一次电话，似乎什么也没发生。
      _counter++;
    });
  }


  void _fetchData() {
    sayHello().then((value) => {
      setState(() {
        message = value;
      })
    });
  }

  final ButtonStyle buttonStyle =
  ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  @override
  Widget build(BuildContext context) {
    //每次调用setState时，都会重新运行此方法，例如，按done
    //通过上面的_incrementCounter方法。
    //颤振框架已经过优化，以制定重新运行的构建方法
    //快速，这样你就可以重建任何需要更新的东西
    //而不是必须单独更改小部件的实例。
    return Scaffold(
      appBar: AppBar(
        //这里我们从MyHomePage对象中获取值，该对象由
        //应用程序。构建方法，并使用它设置appbar标题。
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
        //Center是一个布局小部件。它只需要一个孩子，并对其进行定位
        //在父母的中间。
        child: Column(
          //Column也是一个布局小部件。它需要一张孩子和孩子的名单
          //垂直排列。默认情况下，它会调整自身大小以适应其
          //孩子们水平，并试图和父母一样高。
          //调用“调试绘制”（在控制台中按“p”，选择
          //Android中颤振检查器的“切换调试绘制”操作
          //Studio，或Visual Studio代码中的“切换调试绘制”命令）
          //查看每个小部件的线框。
          //列有各种属性来控制其大小和大小
          //它如何定位它的孩子。这里我们使用mainAxisAlignment来
          //让孩子们垂直居中；这里的主轴是垂直轴
          //轴，因为柱是垂直的（交叉轴是水平)
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              message,style: Theme.of(context).textTheme.headline4),

            ElevatedButton(
              style: buttonStyle,
              onPressed: _fetchData,
              child: const Text('请求数据'),
            ),
            const SizedBox(height: 30),
            const Text(
              '你点击的次数为：',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // 这个尾随的逗号使生成方法的自动格式设置更方便。
    );
  }
}
