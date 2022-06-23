import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  const BasicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      child: Wrap(
        spacing: 30,
        children: [
          ElevatedButton(
            child: const Text('文本组件'),
            onPressed: () {
              Navigator.pushNamed(context, '/text');
            },
          ),
          OutlinedButton(
            child: const Text('按钮组件'),
            onPressed: () {
              Navigator.pushNamed(context, '/button');
            },
          ),
          Container(
            width: 100,
            height: 40,
            color: Colors.pink,
            alignment: Alignment.center,
            child: GestureDetector(
              child: const Text(
                '图片组件',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              onDoubleTap: () {
                Navigator.pushNamed(context, '/image');
              },
            ),
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.send),
            label: const Text("进度条组件"),
            style: ElevatedButton.styleFrom(
              primary: Colors.deepPurpleAccent,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/progress');
            },
          ),
          Container(
            width: 90,
            height: 36,
            color: Colors.teal.shade100,
            alignment: Alignment.center,
            child: GestureDetector(
              child: const Text(
                '表单组件',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              onLongPress: () => {Navigator.pushNamed(context, '/form')},
            ),
          ),
        ],
      ),
    );
  }
}
