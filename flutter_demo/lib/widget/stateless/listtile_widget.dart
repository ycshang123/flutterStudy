import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class ListTileWidget extends StatefulWidget {
  const ListTileWidget({Key? key}) : super(key: key);

  @override
  State<ListTileWidget> createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  //是否密排
  bool _dense = false;
  //是否选中
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListTile组件"),
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
                  "Flutter提供的一个通用列表条目结构，为左中右接口，相应位置可插入组件，可以很方便地应对特定的条目。",
                  style: descStyle,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                color: Colors.green.withAlpha(66),
                child: ListTile(
                  //头部控件
                  leading: Image.asset('images/Android_Studio.png'),
                  title: const Text("Flutter学习"),
                  subtitle: const Text("ListTile组件"),
                  // selected设置为true，文字及图标颜色会发生变化。
                  selected: _selected,
                  contentPadding: const EdgeInsets.all(5),
                  //尾部控件
                  trailing: const Icon(Icons.more_vert),
                  // dense属性设置为true时，内容及图标将会变小、变得更紧密。
                  dense: _dense,
                  onTap: () => setState(
                      () => {_dense = !_dense, _selected = !_selected}),
                  onLongPress: () {
                    print('onLongPress');
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
