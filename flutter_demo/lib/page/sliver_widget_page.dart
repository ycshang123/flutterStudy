import 'package:flutter/cupertino.dart';
import 'package:flutter_demo/common/data.dart';
import 'package:flutter_demo/widget/custom/custom_list_item.dart';

class SliverWidgetPage extends StatelessWidget {
  const SliverWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      // 使用 ListView来build一个列表
      child: ListView.builder(
        itemCount: sliverList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              CustomListItem(sliverList[index]),
            ],
          );
        },
      ),
    );
  }
}
