import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class ColorFilteredWidget extends StatefulWidget {
  const ColorFilteredWidget({Key? key}) : super(key: key);

  @override
  State<ColorFilteredWidget> createState() => _ColorFilteredWidgetState();
}

class _ColorFilteredWidgetState extends State<ColorFilteredWidget> {
  Color _color = Colors.blue.withAlpha(88);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ColorFiltered"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '滤⾊器',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  "可容纳⼀个⼦组件，并将组件按照29种叠⾊模式和任意组件混合，⾮常强⼤。",
                  style: descStyle,
                ),
              ),
              Column(
                children: [
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      _buildRandomColor(),
                      ...BlendMode.values
                          .map((mode) => Column(
                                children: [
                                  _buildChild(mode),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(mode.toString().split(".")[1]),
                                ],
                              ))
                          .toList()
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildChild(m) => SizedBox(
        width: 50,
        height: 50,
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(_color, m),
          child: const Image(image: AssetImage("images/me.png")),
        ),
      );

  Widget _buildRandomColor() => GestureDetector(
        onTap: () => setState(() {}),
        child: Container(
          alignment: Alignment.center,
          width: 60,
          height: 60,
          decoration: BoxDecoration(color: _color, shape: BoxShape.circle),
          child: const Text("Avatar"),
        ),
      );
}
