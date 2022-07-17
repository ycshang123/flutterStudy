import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UploadPage extends StatelessWidget {
  const UploadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("图片上传"),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "附件",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            UploadPanel(),
          ],
        ),
      ),
    );
  }
}

class UploadPanel extends StatefulWidget {
  const UploadPanel({Key? key}) : super(key: key);

  @override
  State<UploadPanel> createState() => _UploadPanelState();
}

class _UploadPanelState extends State<UploadPanel> {
  List<String> images = [];
  List<String> defaultImages = [
    'images/jpg.jpg',
    'images/jpg1.jpg',
    'images/jpg2.jpg',
    'images/jpg3.jpg',
    'images/jpg4.jpg',
    'images/jpg5.jpg',
    'images/jpg6.jpg',
    'images/jpg7.jpg',
  ];

  final double spacing = 8;
  //一行的个数
  final double lineCount = 4;

  @override
  Widget build(BuildContext context) {
    //LayoutBuilder 可以查看当前区域内的约束信息，所以可以通过它来获取约束信息，来计算一张图片的大小
    return LayoutBuilder(builder: (_, BoxConstraints constraints) {
      double maxWith = constraints.maxWidth;
      //一个图片对应的尺寸
      final boxWith = (maxWith - spacing * (lineCount - 1)) / lineCount;
      if (images.isEmpty) return _buildAddBox(size: boxWith);
      return Wrap(
        spacing: spacing,
        runSpacing: spacing,
        children: [..._buildByImages(boxWith), _buildAddBox(size: boxWith)],
      );
    });
  }

  List<Widget> _buildByImages(double boxSide) {
    return images.map((String imagePath) {
      ImageProvider image = AssetImage(imagePath);
      //进行叠放
      return Stack(
        alignment: Alignment.center,
        children: [
          Image(
            image: image,
            fit: BoxFit.cover,
            height: boxSide,
            width: boxSide,
          ),
          Positioned(
            right: 0,
            top: 0,
            child: _buildClose(imagePath, boxSide),
          )
        ],
      );
    }).toList();
  }

  Widget _buildClose(String imagePath, double boxSide) {
    return GestureDetector(
      onTap: () => removeFile(imagePath),
      child: Container(
        alignment: Alignment.topRight,
        width: boxSide / 4,
        height: boxSide / 4,
        decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15))),
        child: Icon(
          Icons.close,
          color: Colors.white,
          size: boxSide / 5,
        ),
      ),
    );
  }

  int _addCounter = 0;

  void doAddAction() {
    images.add(defaultImages[_addCounter % defaultImages.length]);
    _addCounter++;
    setState(() {});
  }

  Widget _buildAddBox({double size = 60}) {
    return GestureDetector(
      onTap: doAddAction,
      child: Container(
        height: size,
        width: size,
        color: const Color(0xffd1d5d9),
        child: Icon(
          Icons.add,
          size: size / 2,
        ),
      ),
    );
  }

  void removeFile(String imagePath) {
    images.remove(imagePath);
    setState(() {});
  }
}
