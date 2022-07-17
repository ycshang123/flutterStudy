import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class OpacityWidget extends StatefulWidget {
  const OpacityWidget({Key? key}) : super(key: key);

  @override
  State<OpacityWidget> createState() => _OpacityWidgetState();
}

class _OpacityWidgetState extends State<OpacityWidget> {
  var _opacity = 0.2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Opacity"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '透明度组件',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  "可容纳一个子组件，将其透明度变为opacity,取值在0——1之间",
                  style: descStyle,
                ),
              ),
              Column(
                children: [_buildSlider(), _buildOpacity()],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOpacity() => Opacity(
        opacity: _opacity,
        child: Image.asset(
          "images/me.png",
          width: 100,
        ),
      );

  Widget _buildSlider() => Slider(
      value: _opacity,
      onChanged: (v) => setState(
            () => _opacity = v,
          ),
      label: _opacity.toString(),
      divisions: 20);
}
