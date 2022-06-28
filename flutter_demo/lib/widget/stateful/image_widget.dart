import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);
  final assetsImagePath = 'images/Android_Studio.png';
  final assetsGifPath = 'images/my-gif.gif';
  final netImageUrl =
      'https://niit-soft.oss-cn-hangzhou.aliyuncs.com/avatar/hand-2.jpg';

  @override
  Widget build(BuildContext context) {
    var alignment = [
      Alignment.center,
      Alignment.centerLeft,
      Alignment.centerRight,
      Alignment.topCenter,
      Alignment.topLeft,
      Alignment.topRight,
      Alignment.bottomCenter,
      Alignment.bottomLeft,
      Alignment.bottomRight,
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('图片组件'),
      ),
      body: Container(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                '图片组件',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.purpleAccent,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 5.0,
                ),
                child: const Text(
                  '用于显示一张图片，可以从文件、内存、网络、资源里加载。可以指定适应方式、样式、颜色混合模式、重复模式。',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '从资源文件和网络加载图片',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Wrap(
                spacing: 10,
                children: <Widget>[
                  _loadFromAssets(),
                  _loadFromNet(),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '图片颜色及混合模式',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Wrap(
                children: BlendMode.values
                    .toList()
                    .map(
                      (mode) => Column(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.all(5),
                            width: 60,
                            height: 60,
                            color: Colors.red,
                            child: Image(
                              image: AssetImage(assetsImagePath),
                              color: Colors.blue.withAlpha(88),
                              colorBlendMode: mode,
                            ),
                          ),
                          Text(mode.toString().split('.')[1]),
                        ],
                      ),
                    )
                    .toList(),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '图片对齐模式',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '图片实现局部放大',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '图片重复模式',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '图片的适应模式',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _loadFromAssets() => Wrap(
        spacing: 10,
        children: [
          Image.asset(assetsImagePath, height: 80),
          Image.asset(
            assetsGifPath,
            height: 80,
            fit: BoxFit.fitWidth,
          )
        ],
      );

  Widget _loadFromNet() => Image.network(
        netImageUrl,
        height: 80,
        fit: BoxFit.fitWidth,
      );
}
