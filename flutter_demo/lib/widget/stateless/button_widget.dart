import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("按钮组件"),
      ),
      body: Container(
        padding: const EdgeInsets.all(12.0),
        child: Wrap(
          spacing: 14.0,
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
              tooltip: "请长按三秒",
              icon: const Icon(Icons.thumb_up),
              color: Colors.red,
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.send),
              label: const Text("发送"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
