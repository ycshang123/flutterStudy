import 'package:flutter/material.dart';

import 'package:flutter_demo/common/style.dart';

class SpacerWidget extends StatefulWidget {
  const SpacerWidget({Key? key}) : super(key: key);

  @override
  State<SpacerWidget> createState() => _SpacerWidgetState();
}

class _SpacerWidgetState extends State<SpacerWidget> {
  int _flexA = 1;
  int _flexB = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Spacer组件"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '空间组件',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  "只能用于Row、Column和Flex布局中，可利用剩余空间进行占位ie,使用flex属性可以给多个Spacer按比例分配空间。",
                  style: descStyle,
                ),
              ),
              const Text(
                "Spacer基本使用",
                style: subTitleStyle,
              ),
              const Text("一个Spacer会占据可延伸的区域"),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                color: Colors.grey.withAlpha(33),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 50,
                      color: Colors.red,
                    ),
                    const Spacer(),
                    Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 50,
                      color: Colors.blue,
                    )
                  ],
                ),
              ),
              const Text(
                "多个Spacer分配空间",
                style: subTitleStyle,
              ),
              _buildSliders(),
              Container(
                color: Colors.grey.withAlpha(33),
                child: Row(
                  children: [
                    Spacer(flex: _flexA),
                    Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 50,
                      color: Colors.red,
                    ),
                    Spacer(flex: _flexB),
                    Container(
                      alignment: Alignment.center,
                      width: 60,
                      height: 50,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSliders() {
    return Column(
      children: [
        Slider(
            divisions: 20,
            min: 1,
            max: 10,
            label: "左边flex:$_flexA",
            value: _flexA.toDouble(),
            onChanged: (v) => setState(() => _flexA = v.round())),
        Slider(
            divisions: 20,
            min: 1,
            max: 10,
            label: "右边flex:$_flexB",
            value: _flexB.toDouble(),
            onChanged: (v) => setState(() => _flexB = v.round())),
      ],
    );
  }
}
