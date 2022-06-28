import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetContainer extends StatelessWidget {
  ContainerInfo info;

  WidgetContainer(this.info, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      //  装饰整个Container
      decoration: BoxDecoration(
        border: Border.all(width: 1.0, color: Colors.indigo),
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      ),
      child: ListTile(
        //  左侧leading图标区用一个container绘制一个圆形 ，文字为标题的第一个字母
        leading: Container(
          alignment: Alignment.center,
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.orange,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 3.0),
                    //阴影模糊程度都
                    blurRadius: 10,
                    //阴影扩散程度
                    spreadRadius: 2)
              ]),
          child: Text(
            info.title.substring(0, 1),
            style: const TextStyle(fontSize: 20, color: Colors.indigo),
          ),
        ),
        title: Text(
          info.title,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.indigo,
          ),
        ),
        subtitle: Text(info.subTitle),
        selected: false,
        contentPadding: const EdgeInsets.all(5),
        trailing: const Icon(Icons.arrow_forward_ios),
        dense: false,
        onTap: () => {Navigator.pushNamed(context, info.url)},
      ),
    );
  }
}

class ContainerInfo {
  late String title;
  late String subTitle;
  late String url;

  ContainerInfo(this.title, this.subTitle, this.url);
}
