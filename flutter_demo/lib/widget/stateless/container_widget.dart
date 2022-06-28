import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container组件"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "容器组件",
              style: TextStyle(fontSize: 22, color: Colors.purpleAccent),
            ),
            Container(
              // symmetric({ vertical, horizontal })：用于设置对称方向的填充，vertical指top和bottom，horizontal指left和right
              margin: const EdgeInsets.symmetric(vertical: 5.0),
              child: const Text(
                "用于容纳单个子组件的容器组件，集成了若干个单子组件的功能,如内外边距、形变、装饰、约束等",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(20.0),
              constraints: const BoxConstraints.expand(
                width: 400.0,
                height: 200.0,
              ),
              decoration: BoxDecoration(
                border: Border.all(width: 2.0, color: Colors.indigo),
                color: Colors.grey, //如果有背景图，背景色被覆盖
                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://cdn.jsdelivr.net/gh/ycshang123/image-hosting@master/me.583hffnfvkw0.png'),
                  fit: BoxFit.fill,
                ),
              ),
              alignment: Alignment.center,
              transform: Matrix4.rotationZ(0.1),
              child: Text(
                'Hello World',
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(color: Colors.indigo),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orange,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      //阴影y轴偏移量
                      offset: Offset(0.0, 3.0),
                      //阴影模糊程度
                      blurRadius: 10,
                      //阴影扩散程度
                      spreadRadius: 2,
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
