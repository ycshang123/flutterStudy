import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class CustomConstrainedBox extends StatefulWidget {
  const CustomConstrainedBox({Key? key}) : super(key: key);

  @override
  State<CustomConstrainedBox> createState() => _CustomConstrainedBoxState();
}

class _CustomConstrainedBoxState extends State<CustomConstrainedBox> {
  var _text = '';

  @override
  Widget build(BuildContext context) {
    var child = Container(
      alignment: Alignment.center,
      color: Colors.indigo.withAlpha(77),
      width: 40,
      height: 40,
      child: const Text("Static"),
    );
    var box = ConstrainedBox(
      constraints: const BoxConstraints(
          minHeight: 50, minWidth: 20, maxHeight: 80, maxWidth: 150),
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
          width: 300,
          height: 100,
          child: Row(
            children: [
              child,
              UnconstrainedBox(
                child: box,
              ),
              child
            ],
          ),
        ),
        _buildInput(),
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
