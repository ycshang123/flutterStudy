import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFittedBox extends StatefulWidget {
  const CustomFittedBox({Key? key}) : super(key: key);

  @override
  State<CustomFittedBox> createState() => _CustomFittedBoxState();
}

class _CustomFittedBoxState extends State<CustomFittedBox> {
  double _childW = 20;
  double _childH = 30;
  final rainbow = <int>[
    0xffff0000,
    0xffFF7F00,
    0xffFFFF00,
    0xff00FF00,
    0xff00FFFF,
    0xff0000FF,
    0xff8B00FF
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
            spacing: 10,
            runSpacing: 10,
            children: BoxFit.values
                .map((mode) => Column(
                      children: [
                        _buildChild(mode),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(mode.toString().split(".")[1])
                      ],
                    ))
                .toList()),
        _buildSlider()
      ],
    );
  }

  Widget _buildChild(BoxFit m) {
    return Container(
      color: Colors.grey.withAlpha(77),
      width: 80,
      height: 60,
      child: FittedBox(
        fit: m,
        child: Container(
          width: _childW,
          height: _childH,
          decoration: BoxDecoration(
              //渐变效果
              gradient: LinearGradient(stops: const <double>[
            0.0,
            1 / 6,
            2 / 6,
            3 / 6,
            4 / 6,
            5 / 6,
            1.0
          ], colors: rainbow.map((e) => Color(e)).toList())),
        ),
      ),
    );
  }

  Widget _buildSlider() => Column(
        children: [
          Slider(
              min: 10,
              max: 100,
              divisions: 100,
              label: '⼦宽度:${_childW.toStringAsFixed(1)}',
              value: _childW,
              onChanged: (v) => setState(() => _childW = v)),
          Slider(
              min: 10,
              max: 150,
              divisions: 100,
              label: '⼦⾼度:${_childH.toStringAsFixed(1)}',
              value: _childH,
              onChanged: (v) => setState(() => _childH = v)),
        ],
      );
}
