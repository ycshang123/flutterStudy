import 'package:flutter/material.dart';
import 'package:flutter_demo/switch_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("基础组件"),
        ),
        body: _buildBody(context));
  }

  ListView _buildBody(BuildContext context) {
    return ListView(children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _textWidget(),
          _buttonWidget(context),
          _iconWidget(),
          _imageWidget(),
          const SwitchAndCheckBoxTestRoute(),
          _progressWidget(context),
        ],
      ),
    ]);
  }

  //文字
  Widget _textWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Hello world',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 32,
            color: Colors.orange,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "这是一段可重复的文字" * 4,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 18, color: Colors.green),
        ),
        const Text(
          "可以放大的文字",
          textScaleFactor: 1.8,
        ),
        Text(
          "带背景的文字",
          style: TextStyle(
              color: Colors.blue,
              fontSize: 18.0,
              height: 1.2,
              fontFamily: "Courier",
              background: Paint()..color = Colors.yellow,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed),
        ),
      ],
    );
  }

  //按钮
  Widget _buttonWidget(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          child: const Text("点击弹出提示框"),
          onPressed: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext dialogContext) {
                return AlertDialog(
                  title: const Text('提示'),
                  content: const Text("这是一个提示框"),
                  actions: <Widget>[
                    OutlinedButton(
                      onPressed: () {
                        Navigator.of(dialogContext).pop();
                      },
                      child: const Text('确定'),
                    )
                  ],
                );
              },
            );
          },
        ),
        OutlinedButton(onPressed: () {}, child: const Text("边框按钮")),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.thumb_up),
          color: Colors.red,
        ),
        ElevatedButton.icon(
          icon: const Icon(Icons.send),
          label: const Text("发送"),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _iconWidget() {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.accessible, color: Colors.green),
          Icon(Icons.error, color: Colors.green),
          Icon(Icons.fingerprint, color: Colors.green),
          Icon(MyIcons.book, color: Colors.purple),
          Icon(MyIcons.wechat, color: Colors.green),
        ],
      ),
    );
  }

//  图片
  Widget _imageWidget() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(15.0),
          child: const Image(
            image: AssetImage("images/me.png"),
            width: 120.0,
          ),
        ),
        const Image(
          image: NetworkImage(
              "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
          width: 100.0,
        )
      ],
    );
  }

  Widget _progressWidget(BuildContext context) {
    return Column(
      children: [
        // 模糊进度条(会执行一个动画)
        Container(
          padding: const EdgeInsets.all(20.0),
          child: LinearProgressIndicator(
            backgroundColor: Colors.grey[200],
            valueColor: const AlwaysStoppedAnimation(Colors.blue),
          ),
        ),

        //进度条显示50%
        Container(
          padding: const EdgeInsets.all(20.0),
          child: LinearProgressIndicator(
            backgroundColor: Colors.grey[200],
            valueColor: const AlwaysStoppedAnimation(Colors.blue),
            value: .5,
          ),
        ),

        // 模糊进度条(会执行一个旋转动画)
        Container(
          padding: const EdgeInsets.all(20.0),
          child: CircularProgressIndicator(
            backgroundColor: Colors.grey[200],
            valueColor: const AlwaysStoppedAnimation(Colors.blue),
          ),
        ),
        // 进度条显示50%，会显示一个半圆
        Container(
          padding: const EdgeInsets.all(20.0),
          child: CircularProgressIndicator(
            backgroundColor: Colors.grey[200],
            valueColor: const AlwaysStoppedAnimation(Colors.blue),
            value: .5,
          ),
        ),
        // 线性进度条高度指定为3
        Container(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            height: 3,
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey[200],
              valueColor: const AlwaysStoppedAnimation(Colors.blue),
              value: .5,
            ),
          ),
        ),
        // 圆形进度条直径指定为100
        SizedBox(
          height: 100,
          width: 100,
          child: CircularProgressIndicator(
            backgroundColor: Colors.grey[200],
            valueColor: const AlwaysStoppedAnimation(Colors.blue),
            value: .7,
          ),
        ),
      ],
    );
  }
}

class MyIcons {
  // book 图标
  static const IconData book =
      IconData(0xe632, fontFamily: 'myIcon', matchTextDirection: true);
  // 微信图标
  static const IconData wechat =
      IconData(0xe7c1, fontFamily: 'myIcon', matchTextDirection: true);
}
