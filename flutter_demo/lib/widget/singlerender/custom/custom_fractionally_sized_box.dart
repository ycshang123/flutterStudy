import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFractionallySizedBox extends StatefulWidget {
  const CustomFractionallySizedBox({Key? key}) : super(key: key);

  @override
  State<CustomFractionallySizedBox> createState() =>
      _CustomFractionallySizedBoxState();
}

class _CustomFractionallySizedBoxState
    extends State<CustomFractionallySizedBox> {
  var _hf = 0.5;
  var _wf = 0.4;

  @override
  Widget build(BuildContext context) {
    var box = FractionallySizedBox(
      //当我们需要一个控件的尺寸是相对尺寸时
      widthFactor: _wf,
      heightFactor: _hf,
      alignment: Alignment.center,
      child: Container(color: Colors.orange),
    );
    return Column(
      children: <Widget>[
        Container(
            color: Colors.grey.withAlpha(77),
            width: 200,
            height: 100,
            child: box),
        _buildSlider()
      ],
    );
  }

  Widget _buildSlider() => Column(
        children: [
          Slider(
              divisions: 20,
              min: 0.0,
              max: 2,
              label: '宽分率:${_wf.toStringAsFixed(1)}',
              value: _wf,
              onChanged: (v) => setState(() => _wf = v)),
          Slider(
              divisions: 20,
              min: 0.0,
              max: 2,
              label: '⾼分率:${_hf.toStringAsFixed(1)}',
              value: _hf,
              onChanged: (v) => setState(() => _hf = v)),
        ],
      );
}
