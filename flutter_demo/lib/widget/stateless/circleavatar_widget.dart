import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CircleAvatar"),
      ),
      body: Container(
        padding: const EdgeInsets.all(
          10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '圆形组件',
              style: titleStyle,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5.0),
              child: const Text(
                '可将一张图片变成圆形，中间可以放置一个组件。可指定半径、前景色、背景色等。',
                style: descStyle,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5.0),
              child: const CircleAvatar(
                //控制圆形大小
                radius: 30,
                // backgroundColor: ,
                backgroundImage: AssetImage('images/me.png'),
                //设置图标的颜色
                foregroundColor: Colors.white,
                child: Icon(
                  Icons.check,
                  size: 50,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
