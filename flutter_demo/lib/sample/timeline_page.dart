import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimelinePage extends StatefulWidget {
  const TimelinePage({Key? key}) : super(key: key);

  @override
  State<TimelinePage> createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFf29d39),
        title: const Text("我的时光轴"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.edit))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(itemBuilder: (BuildContext context, int index) {
          return getItem();
        }),
      ),
    );
  }

  Widget rightItem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const <Widget>[
            Text("这是一个标题"),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "2022-06-27 18:00:00",
                style: TextStyle(color: Colors.black38),
              ),
            ),
          ],
        ),
        const Text(
          "这里放一些描述信息",
          style: TextStyle(color: Colors.black54, fontSize: 12),
        ),
        const SizedBox(
          width: 300,
          child: Divider(
            height: 24,
          ),
        )
      ],
    );
  }

  Widget leftItem() {
    return Stack(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 1),
          //垂直分割线
          child: VerticalDivider(
            //线的高度
            thickness: 2,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 0, top: 25),
          child: Container(
            width: 20,
            height: 20,
            //绘制圆形效果
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.orange),
          ),
        )
      ],
    );
  }

  Widget getItem() {
    return SizedBox(
      height: 70,
      child: Row(
        children: [
          SizedBox(
            height: 70,
            width: 20,
            child: leftItem(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: rightItem(),
          ),
        ],
      ),
    );
  }
}
