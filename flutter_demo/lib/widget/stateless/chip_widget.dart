import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../common/style.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chip组件"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '小纸条组件',
              style: titleStyle,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 5.0,
              ),
              child: const Text(
                '一个横向的圆边小条，可以包含左中右三个组件。可以指定颜色、阴影色和点击事件。',
                style: descStyle,
              ),
            ),
            Wrap(
              spacing: 20,
              children: [
                Chip(
                  label: const Text("走进Flutter的世界"),
                  avatar: Image.asset("images/dash_dart.png"),
                  padding: const EdgeInsets.all(5),
                  labelPadding: const EdgeInsets.all(5),
                  backgroundColor: Colors.indigo.withAlpha(66),
                  shadowColor: Colors.orangeAccent,
                  elevation: 5,
                ),
                Chip(
                  label: const Text("走进Flutter的世界"),
                  avatar: const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("images/me.png"),
                  ),
                  padding: const EdgeInsets.all(5),
                  backgroundColor: Colors.green.withAlpha(66),
                  shadowColor: Colors.orangeAccent,
                  elevation: 5,
                  deleteIconColor: Colors.red,
                  //删除按钮点击事件
                  onDeleted: () => showAboutDialog(context: context),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
