import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class SelectableTextWidget extends StatefulWidget {
  const SelectableTextWidget({Key? key}) : super(key: key);

  @override
  State<SelectableTextWidget> createState() => _SelectableTextWidgetState();
}

class _SelectableTextWidgetState extends State<SelectableTextWidget> {
  final text =
      "The [SelectableText] widget displays a string of text with a singlestyle."
      "The string might break across multiple lines or might all bedisplayed on"
      "the same line depending on the layout constraints.";
  var _textAlign = TextAlign.left;
  final info = " 始⾂之解⽜之时，所⻅⽆⾮⽜者。三年之后，未尝⻅全⽜也。⽅今之时，"
      "⾂以神遇⽽不以⽬视，官知⽌⽽神欲⾏。依乎天理，批⼤郤，导⼤窾，因其固然，"
      "技经肯綮之未尝，⽽况⼤軱乎！良庖岁更⼑，割也；族庖⽉更⼑，折也。"
      "今⾂之⼑⼗九年矣，所解数千⽜矣，⽽⼑刃若新发于硎。彼节者有间，⽽⼑刃者⽆厚；"
      "以⽆厚⼊有间，恢恢乎其于游刃必有余地矣，是以⼗九年⽽⼑刃若新发于硎。"
      "虽然，每⾄于族，吾⻅其难为，怵然为戒，视为⽌，⾏为迟。动⼑甚微，謋然已解，如⼟委地。"
      "提⼑⽽⽴，为之四顾，为之踌躇满志，善⼑⽽藏之.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SelectableText'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                '可选择⽂字',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '可选择的⽂字，可以选择、复制。可指定浮标的颜⾊、⼤⼩、⽂字样式、对⻬⽅式等。',
                  style: descStyle,
                ),
              ),
              Column(
                children: <Widget>[
                  _buildSelector(),
                  SelectableText(
                    // 显示⽂字
                    text,
                    // ⽂字样式
                    style: descStyle,
                    // 光标颜⾊
                    cursorColor: Colors.green,
                    // 光标半径
                    cursorRadius: const Radius.circular(3),
                    // 光标宽度
                    cursorWidth: 5,
                    // 是否显示光标
                    showCursor: true,
                    // ⽂本对⻬⽅式（6种）
                    textAlign: _textAlign,
                    // ⽂字⽅向
                    textDirection: TextDirection.ltr,
                    // 是否⾃动聚焦
                    autofocus: false,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SelectableText(
                info,
                style: const TextStyle(fontSize: 18, color: Colors.orange),
                cursorColor: Colors.green,
                cursorRadius: const Radius.circular(3),
                cursorWidth: 5,
                showCursor: true,
                autofocus: false,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSelector() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        const Text(
          "textAlign属性选择:",
          style: TextStyle(
            fontSize: 16,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
        DropdownButton<TextAlign>(
            underline: Container(),
            value: _textAlign,
            items: TextAlign.values
                .map((e) => DropdownMenuItem<TextAlign>(
                      value: e,
                      child: Text(e.toString()),
                    ))
                .toList(),
            onChanged: (e) {
              setState(() {
                _textAlign = e!;
              });
            }),
      ],
    );
  }
}
