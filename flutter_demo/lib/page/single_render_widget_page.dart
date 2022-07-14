import 'package:flutter/cupertino.dart';
import 'package:flutter_demo/common/data.dart';
import 'package:flutter_demo/widget/custom/custom_list_item.dart';

class SingleRenderWidgetPage extends StatelessWidget {
  const SingleRenderWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      //  使用ListView来build一个列表
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return CustomListItem(singleRenderList[index]);
        },
        itemCount: singleRenderList.length,
      ),
    );
  }
}
