import 'package:flutter/material.dart';
import 'package:flutter_demo/common/data.dart';
import 'package:flutter_demo/common/style.dart';

class ItemBean {
  final String title;
  final String subTitle;
  final String imgUrl;

  ItemBean(this.title, this.subTitle, this.imgUrl);
}

enum ItemType { java, kotlin, dart }

class ExpansionWidget extends StatefulWidget {
  const ExpansionWidget({Key? key}) : super(key: key);

  @override
  State<ExpansionWidget> createState() => _ExpansionWidgetState();
}

class _ExpansionWidgetState extends State<ExpansionWidget> {
  final Map<ItemType, ItemBean> languages = {
    ItemType.java: ItemBean("Java", "曾经世界上最流⾏的语⾔", "images/java.webp"),
    ItemType.kotlin: ItemBean("Kotlin", "未来世界上最流⾏的语⾔", "images/kotlin.webp"),
    ItemType.dart: ItemBean("Dart", "世界上最优雅的语⾔", "images/dart.webp"),
  };
  var _type = ItemType.java;
  var _closed = true;
  var data = [
    Colors.red[100],
    Colors.red[200],
    Colors.red[300],
    Colors.red[400],
    Colors.red[500],
    Colors.red[600],
    Colors.red[700],
    Colors.red[800],
    Colors.red[900],
  ];
  int _position = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExpansionTile & ExpandIcon & ExpansionPaneList'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '展开栏',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  '⼀个通⽤的展开栏，可在指定的部位安放组件，点击时会折叠/显隐下⽅组件，接收折叠事件。',
                  style: descStyle,
                ),
              ),
              ExpansionTile(
                title: const Text("请选择语言"),
                backgroundColor: Colors.grey.withAlpha(6),
                onExpansionChanged: (value) {
                  print("$value");
                },
                //是否初始处于开启状态
                initiallyExpanded: true,
                children: languages.keys
                    .map((type) => RadioListTile<ItemType>(
                          value: type,
                          groupValue: _type,
                          title: Text(languages[type]!.title),
                          activeColor: Colors.orangeAccent,
                          dense: false,
                          subtitle: Text(languages[type]!.subTitle),
                          selected: _type == type,
                          secondary: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage(languages[type]!.imgUrl),
                          ),
                          onChanged: (type) => setState(() => _type = type!),
                        ))
                    .toList(),
              ),
              const Text(
                '展开图标',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '⼀个展开图标按钮，点击时会⾃⼰执⾏旋转180度的动画。可指定颜⾊、⼤⼩、边距，接收点击事件。',
                  style: descStyle,
                ),
              ),
              ExpandIcon(
                isExpanded: _closed,
                padding: const EdgeInsets.all(5),
                size: 40,
                //  不展开颜色
                color: Colors.blue,
                //  展开颜色
                expandedColor: Colors.orange,
                onPressed: (value) => setState(() => _closed = !_closed),
              ),
              const Text(
                '展开列表',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '可展开的列表组件，可以根据逻辑来实现单展开或多展开。可指定动画时⻓，接收展开回调。',
                  style: descStyle,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ExpansionPanelList(
                  children: data.map((color) => _buildItem(color!)).toList(),
                  animationDuration: const Duration(milliseconds: 200),
                  expansionCallback: (index, open) {
                    setState(() => _position = open ? -1 : index);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  ExpansionPanel _buildItem(Color color) {
    //注意ExpansionPanelList要被SingleChildScrollView包裹，否则抛出如下异常：
    return ExpansionPanel(
        isExpanded: data.indexOf(color) == _position,
        //canTapOnHeader：header是否可以点击
        canTapOnHeader: true,
        headerBuilder: (ctx, index) => Center(
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration:
                        BoxDecoration(color: color, shape: BoxShape.circle),
                  ),
                  Container(
                    width: 120,
                    alignment: Alignment.center,
                    height: 50,
                    child: Text(
                      colorString(color),
                      style: descStyle,
                    ),
                  )
                ],
              ),
            ),
        body: Container(
          alignment: Alignment.center,
          height: 50,
          color: color,
          child: Text(
            colorString(color),
            style: const TextStyle(color: Colors.white, shadows: [
              Shadow(
                color: Colors.black,
                offset: Offset(.5, .5),
                blurRadius: 2,
              )
            ]),
          ),
        ));
  }
}
