import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';
import 'package:flutter_demo/widget/singlerender/custom_shape_border.dart';

import 'hole_shape_border.dart';

class ClipWidget extends StatelessWidget {
  const ClipWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clip"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'ClipOval',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  "椭圆剪裁，可容纳一个子组件，并将其宽高为长轴和短轴进行椭圆裁切。",
                  style: descStyle,
                ),
              ),
              Wrap(
                spacing: 20,
                children: <Widget>[
                  ClipOval(
                    child: Image.asset(
                      'images/bg.jpg',
                      width: 150,
                      height: 100,
                    ),
                  ),
                  ClipOval(
                    child: Image.asset(
                      'images/bg.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'ClipRect',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  "矩形裁剪，可容纳⼀个⼦组件，并将其进⾏矩形裁切，可借助SizedBox、Align、AspectRadio等限定组件。",
                  style: descStyle,
                ),
              ),
              ClipRect(
                child: SizedBox(
                  width: 120,
                  height: 100,
                  child: Image.asset(
                    "images/bg.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'ClipRRect',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  "圆⻆矩形裁剪，可容纳⼀个⼦组件，并将其进⾏圆⻆矩形裁切，指定borderRadius作为边⻆半径。",
                  style: descStyle,
                ),
              ),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.elliptical(35, 30)),
                child: Image.asset(
                  "images/bg.jpg",
                  width: 150,
                  height: 100,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'ClipPath',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  "路径裁剪，可容纳⼀个⼦组件，并将其按指定路径进⾏裁切。可⾃定义路径形状，是⼀个很灵活的裁剪组件。",
                  style: descStyle,
                ),
              ),
              ClipPath(
                clipper: ShapeBorderClipper(shape: _StarShapeBorder()),
                child: Image.asset(
                  "images/bg.jpg",
                  width: 150,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Colors.indigo),
                    borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                    image: const DecorationImage(
                        image: AssetImage("images/bg.jpg"), fit: BoxFit.fill)),
                child: Material(
                  color: Colors.orangeAccent,
                  shape: const HoleShapeBorder(
                    size: 20,
                    offset: Offset(0.05, 0.1),
                  ),
                  child: Container(
                    height: 200,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Material(
                color: Colors.green.shade100,
                shape: CustomShapeBorder(color: Colors.green.shade600),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 120,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _StarShapeBorder extends ShapeBorder {
  final Path _path = Path();

  @override
  EdgeInsetsGeometry get dimensions => throw UnimplementedError();

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    throw UnimplementedError();
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) =>
      nStarPath(20, rect.height / 2, rect.height / 2 * 0.85,
          dx: rect.width / 2, dy: rect.height / 2);

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) {
    throw UnimplementedError();
  }

  Path nStarPath(int num, double R, double r, {dx = 0, dy = 0}) {
    double perRad = 2 * pi / num;
    double radA = perRad / 2 / 2;
    double radB = 2 * pi / (num - 1) / 2 - radA / 2 + radA;
    _path.moveTo(cos(radA) * R + dx, -sin(radA) * R + dy);
    for (int i = 0; i < num; i++) {
      _path.lineTo(
          cos(radA + perRad * i) * R + dx, -sin(radA + perRad * i) * R + dy);
      _path.lineTo(
          cos(radB + perRad * i) * r + dx, -sin(radB + perRad * i) * r + dy);
    }
    _path.close();
    return _path;
  }
}
