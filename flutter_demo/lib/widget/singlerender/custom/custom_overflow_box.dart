import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class CustomOverflowBox extends StatefulWidget {
  const CustomOverflowBox({Key? key}) : super(key: key);

  @override
  State<CustomOverflowBox> createState() => _CustomOverflowBoxState();
}

class _CustomOverflowBoxState extends State<CustomOverflowBox> {
  var _text = '';

  @override
  Widget build(BuildContext context) {
    //OverflowBox自己是没有宽高的，他的属性都是对子控件的约束而已，OverflowBox的尺寸是由他的父控件约束来决定的
    var box = OverflowBox(
      alignment: Alignment.center,
      minHeight: 50,
      minWidth: 50,
      maxWidth: 200,
      maxHeight: 120,
      child: Container(
        color: Colors.orange,
        child: Text(
          _text,
          style: descStyle,
        ),
      ),
    );
    return Column(
      children: <Widget>[
        Container(
            color: Colors.grey.withAlpha(77),
            width: 100,
            height: 100,
            child: box),
        _buildInput()
      ],
    );
  }

  Widget _buildInput() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: TextField(
        decoration: const InputDecoration(
            border: OutlineInputBorder(), hintText: "请输入"),
        onChanged: (v) {
          setState(() {
            _text = v;
          });
        },
      ),
    );
  }
}
