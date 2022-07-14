// 自定义列表item
// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_demo/widget/custom/tag.dart';
import 'package:flutter_demo/widget/singlerender/custom_shape_border.dart';

class CustomListItem extends StatelessWidget {
  ItemInfo info;

  CustomListItem(this.info, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        Navigator.pushNamed(context, info.url),
      },
      child: Stack(
        children: [
          Material(
            shape: CustomShapeBorder(
              color: info.foregroundColor,
            ),
            child: Container(
              height: 100,
              color: info.backgroundColor,
              padding: const EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
                bottom: 5,
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: _buildLeading(),
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _buildTitle(),
                        _buildSummary(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildTag(info.foregroundColor),
          SizedBox(
            height: 112,
          )
        ],
      ),
    );
  }

  Widget _buildLeading() {
    List<Icon> iconList = [];
    for (var i = 0; i < info.level; i++) {
      iconList.add(
        Icon(
          Icons.star,
          size: 15,
          color: info.foregroundColor,
        ),
      );
    }
    return Column(
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
              shape:
                  CircleBorder(side: BorderSide(width: 1, color: Colors.blue))),
          child: Text(
            info.title.substring(0, 2).toUpperCase(),
            style: const TextStyle(
                fontSize: 20,
                color: Color(0xff2899e0),
                fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Wrap(
          children: iconList.map((e) => e).toList(),
        )
      ],
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Text(
        info.title,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Colors.grey.shade700,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          shadows: const [
            Shadow(
              color: Colors.white,
              offset: Offset(.3, .3),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSummary() {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      child: Text(
        info.subTitle,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Colors.grey.shade600,
          fontSize: 14,
          shadows: [
            Shadow(
              color: Colors.grey.shade200,
              offset: const Offset(.5, .5),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTag(Color color) {
    return Positioned(
      top: 5,
      right: 35,
      child: SizedOverflowBox(
        alignment: Alignment.center,
        size: Size.zero,
        child: Tag(
          color: color,
          shadowHeight: 8.0,
          size: const Size(20, 30),
        ),
      ),
    );
  }
}

class ItemInfo {
  late String title;
  late String subTitle;
  late String url;
  late Color backgroundColor;
  late Color foregroundColor;
  late double level;

  ItemInfo(
    this.title,
    this.subTitle,
    this.url,
    this.backgroundColor,
    this.foregroundColor,
    this.level,
  );
}
