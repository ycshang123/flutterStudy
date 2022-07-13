import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

import 'custom/custom_aspect_ratio.dart';
import 'custom/custom_constrained_box.dart';
import 'custom/custom_fitted_box.dart';
import 'custom/custom_fractionally_sized_box.dart';
import 'custom/custom_limited_box.dart';
import 'custom/custom_overflow_box.dart';
import 'custom/custom_rotated_box.dart';
import 'custom/custom_sized_overflow_box.dart';
import 'custom/custom_unconstrained_box.dart';

class BoxWidget extends StatelessWidget {
  const BoxWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Box'),
      ),
      body: Container(
        padding: const EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
          bottom: 40,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                '装饰盒 DecoratedBox',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '可容纳⼀个⼦组件，对其进⾏装饰，设置边线、渐变、阴影、背景图等。',
                  style: descStyle,
                ),
              ),
              Wrap(
                spacing: 20,
                children: <Widget>[
                  const DecoratedBox(
                    //下边框
                    decoration: UnderlineTabIndicator(
                      insets: EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: -5,
                      ),
                      borderSide: BorderSide(
                        color: Colors.orange,
                        width: 2,
                      ),
                    ),
                    child: Icon(
                      Icons.ac_unit,
                      color: Colors.blue,
                      size: 80,
                    ),
                  ),
                  const DecoratedBox(
                    decoration: FlutterLogoDecoration(
                      textColor: Colors.red,
                      margin: EdgeInsets.all(10),
                      style: FlutterLogoStyle.stacked,
                    ),
                    child: SizedBox(
                      width: 100,
                      height: 100,
                    ),
                  ),
                  DecoratedBox(
                    //绘制在widget之上(前景效果)
                    position: DecorationPosition.foreground,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.orange,
                          width: 5,
                        ),
                        top: BorderSide(
                          color: Colors.orange,
                          width: 5,
                        ),
                      ),
                    ),
                    child: SizedBox(
                      width: 80,
                      height: 80,
                      child: Image.asset(
                        'images/bg.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const DecoratedBox(
                    decoration: ShapeDecoration(
                      shadows: [
                        BoxShadow(
                          color: Colors.orangeAccent,
                          offset: Offset(0, 0),
                          blurRadius: 2,
                          spreadRadius: 2,
                        ),
                      ],
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'images/bg.jpg',
                        ),
                      ),
                      shape: CircleBorder(
                        side: BorderSide(
                          width: 1.0,
                          color: Color(0xffe65100),
                        ),
                      ),
                    ),
                    child: SizedBox(
                      width: 80,
                      height: 80,
                      child: Icon(
                        Icons.ac_unit,
                        color: Colors.blue,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                '定尺⼨盒 SizedBox',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '可容纳⼀个⼦组件，通过指定宽⾼限定⼦组件区域。',
                  style: descStyle,
                ),
              ),
              Container(
                color: Colors.grey.withAlpha(77),
                width: 200,
                height: 100,
                child: Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      color: Colors.cyan,
                      width: 50,
                      height: 50,
                      child: const Text('Static'),
                    ),
                    SizedBox(
                      width: 80,
                      height: 40,
                      child: Container(
                        color: Colors.orange,
                        child: const Icon(
                          Icons.android,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: Colors.cyan,
                      width: 50,
                      height: 50,
                      child: const Text('Static'),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                '适应盒 FittedBox',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '可容纳⼀个⼦组件，使⽤fit属性决定⼦组件区域相当于⽗组件的适应模式，拥有对⻬属性alignment。',
                  style: descStyle,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const CustomFittedBox(),
              const SizedBox(
                height: 15,
              ),
              const Text(
                '限制盒 LimitedBox',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '可容纳⼀个⼦组件，通过指定最⼤宽⾼来限定⼦组件区域。',
                  style: descStyle,
                ),
              ),
              const CustomLimitedBox(),
              const SizedBox(
                height: 15,
              ),
              const Text(
                '约束盒 ConstrainedBox',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '可容纳⼀个⼦组件，通过指定最⼤、最⼩宽⾼来限定⼦组件的区域。',
                  style: descStyle,
                ),
              ),
              const CustomConstrainedBox(),
              const Text(
                '解除约束盒 UnconstrainedBox',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '可容纳⼀个⼦组件，并解除该组件的所有区域约束，展现⾃我尺⼨。',
                  style: descStyle,
                ),
              ),
              const CustomUnConstrainedBox(),
              const SizedBox(
                height: 15,
              ),
              const Text(
                '分率盒 FractionallySizedBox',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '可容纳⼀个⼦组件，指定宽⾼分率，限定⼦组件区域为⽗容器宽⾼*分率，及对⻬⽅式alignment。',
                  style: descStyle,
                ),
              ),
              const CustomFractionallySizedBox(),
              const SizedBox(
                height: 15,
              ),
              const Text(
                '⽐例盒 AspectRatio',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '可容纳⼀个⼦组件，通过指定宽⾼⽐aspectRatio来限定⼦组件的区域。',
                  style: descStyle,
                ),
              ),
              const CustomAspectRatio(),
              const SizedBox(
                height: 15,
              ),
              const Text(
                '溢出盒 OverflowBox',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '可容纳⼀个⼦组件，且⼦组件允许溢出⽗组件区域，可以指定宽⾼的最⼤最⼩区域进⾏限定，拥有对⻬属性alignment。',
                  style: descStyle,
                ),
              ),
              const CustomOverflowBox(),
              const SizedBox(
                height: 15,
              ),
              const Text(
                '尺⼨溢出盒 SizedOverflowBox',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '可容纳⼀个⼦组件，且⼦组件允许溢出⽗组件区域，可以通过size属性对⼦组件进⾏偏移，拥有对⻬属性alignment。',
                  style: descStyle,
                ),
              ),
              const CustomSizedOverflowBox(),
              const SizedBox(
                height: 15,
              ),
              const Text(
                '旋转盒 RotatedBox',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '可容纳⼀个⼦组件，将其沿顺时针旋转90度。',
                  style: descStyle,
                ),
              ),
              const CustomRotatedBox(),
              const SizedBox(
                height: 15,
              ),
              const Text(
                '颜⾊盒 ColoredBox',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '在⼦组件的布局区域上绘制指定颜⾊，然后将⼦组件绘制在背景⾊上。',
                  style: descStyle,
                ),
              ),
              ColoredBox(
                color: Colors.blue.withAlpha(77),
                child: Container(
                  width: 300,
                  height: 100,
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        10,
                      ),
                    ),
                    color: Colors.orange,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    '蓝⾊是加了margin和圆⻆的Container，外层包裹红⾊的ColoredBox。',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
