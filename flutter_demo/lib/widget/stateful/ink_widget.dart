import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class InkWidget extends StatefulWidget {
  const InkWidget({Key? key}) : super(key: key);

  @override
  State<InkWidget> createState() => _InkWidgetState();
}

class _InkWidgetState extends State<InkWidget> {
  String _info = '⻓按可以变化';
  var _msg = 'Push';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ink & InkWell & InkResponse"),
      ),
      body: Container(
        padding:
            const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Ink',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  "⽔波纹组件，⽤于绘制图像或其他装饰的Material组件。",
                  style: descStyle,
                ),
              ),
              const Text(
                'InkWell',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '⽔波纹点击组件，当需要给⼀个元素点击事件的时候，可以⽤InkWell来包裹这个元素，有常⽤交互事件和点击效果。',
                  style: descStyle,
                ),
              ),
              const Text(
                'InkResponse',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '⽔波纹的点击响应组件，接收点击、双击、⻓按、取消、⾼亮变化事件，可指定⽔波纹的颜⾊、半径、⾼亮、形状等属性。',
                  style: descStyle,
                ),
              ),
              Material(
                color: Colors.orangeAccent,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Center(
                    child: Ink(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      width: 200,
                      height: 100,
                      child: InkWell(
                        onTap: () {},
                        child: const Center(
                          child: Text("Hello"),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Material(
                color: Colors.grey[800],
                child: Center(
                  child: Ink.image(
                    image: const AssetImage("images/bg.jpg"),
                    fit: BoxFit.cover,
                    width: 300,
                    height: 200,
                    child: InkWell(
                      onTap: () {},
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Hello",
                          style: titleLightStyle,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              StatefulBuilder(
                builder: (ctx, setState) => InkWell(
                  onLongPress: () {
                    setState(() {
                      _info = '⻓按变化后显示';
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.indigo.withAlpha(77),
                    width: 200,
                    height: 100,
                    child: Text(
                      _info,
                      style: descStyle,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkResponse(
                onTap: () => setState(() => _msg = "onTap"),
                onDoubleTap: () => setState(() => _msg = 'onDoubleTap'),
                onLongPress: () => setState(() => _msg = 'onLongPress'),
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.green.withAlpha(77),
                  alignment: Alignment.center,
                  child: Text(
                    _msg,
                    style: descStyle,
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
