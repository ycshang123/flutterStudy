import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAspectRatio extends StatefulWidget {
  const CustomAspectRatio({Key? key}) : super(key: key);

  @override
  State<CustomAspectRatio> createState() => _CustomAspectRationState();
}

class _CustomAspectRationState extends State<CustomAspectRatio> {
  var _ratio = 0.75;

  @override
  Widget build(BuildContext context) {
    var child = Container(
      alignment: Alignment.center,
      color: Colors.blue.withAlpha(77),
      width: 50,
      height: 50,
      child: const Text("Static"),
    );
    var box = AspectRatio(
      //根据设置调整子元素 child 的宽高比
      aspectRatio: _ratio,
      child: Container(
        color: Colors.orange,
        child: const Icon(
          Icons.android,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
    return Column(
      children: <Widget>[
        _buildSlider(),
        Container(
          color: Colors.grey.withAlpha(22),
          width: 300,
          height: 100,
          child: Row(
            children: <Widget>[child, box, child],
          ),
        ),
      ],
    );
  }

  Widget _buildSlider() => Slider(
      divisions: 20,
      min: 0.1,
      max: 2.0,
      label: _ratio.toStringAsFixed(2),
      value: _ratio,
      onChanged: (v) => setState(() => _ratio = v));
}
