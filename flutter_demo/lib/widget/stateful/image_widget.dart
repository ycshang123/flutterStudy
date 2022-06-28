import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('图片组件'),
      ),
      body: Container(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: <Widget>[
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
        ),
      ),
    );
  }
}
