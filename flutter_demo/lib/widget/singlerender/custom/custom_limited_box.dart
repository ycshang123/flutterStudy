import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class CustomLimitedBox extends StatefulWidget {
  const CustomLimitedBox({Key? key}) : super(key: key);

  @override
  State<CustomLimitedBox> createState() => _CustomLimitedBoxState();
}

class _CustomLimitedBoxState extends State<CustomLimitedBox> {
  var _text = '';

  @override
  Widget build(BuildContext context) {
    var child = Container(
      alignment: Alignment.center,
      color: Colors.blue.withAlpha(77),
      width: 50,
      height: 50,
      child: const Text("Static"),
    );
    //当LimitedBox的父组件受到约束，此时LimitedBox将不会做任何操作，我们可以认为没有这个组件
    var box = LimitedBox(
      maxHeight: 60,
      maxWidth: 100,
      child: Container(
        color: Colors.orange,
        child: Text(
          _text,
          style: descStyle,
        ),
      ),
    );
    return Column(
      children: [
        Container(
          color: Colors.grey.withAlpha(77),
          width: 300,
          height: 100,
          child: Row(
            children: [child, UnconstrainedBox(child: box), child],
          ),
        ),
        _buildInput()
      ],
    );
  }

  Widget _buildInput() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: TextField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: "请输入",
        ),
        onChanged: (v) {
          setState(() {
            _text = v;
          });
        },
      ),
    );
  }
}
