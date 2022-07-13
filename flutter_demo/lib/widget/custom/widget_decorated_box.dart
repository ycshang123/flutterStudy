import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/widget/custom/tag.dart';

class DecoratedContainer extends StatelessWidget {
  ContainerMsg info;
  final icons = [
    Icons.star,
    Icons.star,
    Icons.star,
    Icons.star,
    Icons.star,
  ];

  DecoratedContainer(this.info, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0, left: 5, right: 5, bottom: 5),
      //  装饰整个Container
      decoration: BoxDecoration(
        border: Border.all(width: 1.0, color: Color(0xff2899e0)),
        color: Color(0xffb0d4ec),
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Container(
        height: 100,
        alignment: Alignment.topRight,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedOverflowBox(
                  alignment: Alignment.center,
                  size: Size.zero,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 50, top: 10),
                    child: Tag(
                      color: Colors.blue.shade600,
                      shadowHeight: 16.0,
                      size: const Size(24, 30),
                    ),
                  ),
                ),
              ],
            ),
            ListTile(
              //  左侧leading图标区用一个container绘制一个圆形 ，文字为标题的第一个字母
              leading: Container(
                alignment: Alignment.center,
                width: 80,
                height: 80,
                child: Wrap(
                  alignment: WrapAlignment.center,
                  runSpacing: 5,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 50,
                      decoration: const ShapeDecoration(
                          shadows: [
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(0, 0),
                                blurRadius: 2,
                                spreadRadius: 2)
                          ],
                          shape: CircleBorder(
                              side: BorderSide(width: 1, color: Colors.blue))),
                      child: Text(
                        info.title.substring(0, 2),
                        style: const TextStyle(
                            fontSize: 20,
                            color: Color(0xff2899e0),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Wrap(
                        children: icons
                            .map((e) => Icon(
                                  e,
                                  color: Color(0xff2899e0),
                                  size: 15,
                                ))
                            .toList())
                  ],
                ),
              ),
              title: Container(
                margin: EdgeInsets.only(bottom: 5.0),
                child: Text(
                  info.title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Text(
                info.subTitle,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(fontSize: 14),
              ),
              selected: false,
              contentPadding: const EdgeInsets.all(5),
              trailing: const Icon(Icons.arrow_forward_ios),
              dense: false,
              onTap: () => {Navigator.pushNamed(context, info.url)},
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerMsg {
  late String title;
  late String subTitle;
  late String url;

  ContainerMsg(this.title, this.subTitle, this.url);
}
