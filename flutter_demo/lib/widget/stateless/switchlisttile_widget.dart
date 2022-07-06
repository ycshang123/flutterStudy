import 'package:flutter/material.dart';

import 'package:flutter_demo/common/style.dart';

class SwitchListTileWidget extends StatefulWidget {
  const SwitchListTileWidget({Key? key}) : super(key: key);

  @override
  State<SwitchListTileWidget> createState() => _SwitchListTileWidgetState();
}

class _SwitchListTileWidgetState extends State<SwitchListTileWidget> {
  bool _selected = false;
  bool _dense = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SwitchListTile组件"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '列表组件',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  "Flutter提供的一个通用列表条目结构,为左中结构，尾部是一个Switch,相应位置可插入组件，可以方便地应对特定的条目。",
                  style: descStyle,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                color: Colors.green.withAlpha(66),
                child: SwitchListTile(
                    value: _selected,
                    dense: _dense,
                    selected: _selected,
                    activeColor: Colors.orangeAccent,
                    secondary: Image.asset('images/kotlin.webp'),
                    title: const Text("走进Flutter"),
                    subtitle: const Text("SwitchListTile组件"),
                    //选中和未选中的图片
                    activeThumbImage:
                        const AssetImage('images/Android_Studio.png'),
                    inactiveThumbImage: const AssetImage('images/dart.webp'),
                    onChanged: (bool? value) => setState(
                        () => {_selected = !_selected, _dense = !_dense})),
              )
            ],
          ),
        ),
      ),
    );
  }
}
