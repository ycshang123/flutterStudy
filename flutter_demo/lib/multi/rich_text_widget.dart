import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';
import 'package:flutter_demo/utils/colorutils.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const str = " 发光强度简称光强，国际单位是（坎德拉）简写cd。"
        "1cd是指光源在指定⽅向的单位⽴体⻆内发出的光通量。"
        "光源辐射是均匀时，则光强为I=F/Ω，Ω为⽴体⻆，单位为球⾯度（sr）,F为光通量，"
        "单位是流明，对于点光源由I=F/4π 。光亮度是表示发光⾯明亮程度的，"
        "指发光表⾯在指定⽅向的发光强度与垂直且指定⽅向的发光⾯的⾯积之⽐，"
        "单位是坎德拉/平⽅⽶。对于⼀个漫散射⾯，尽管各个⽅向的光强和光通量不同，"
        "但各个⽅向的亮度都是相等的。电视机的荧光屏就是近似于这样的漫散射⾯，"
        "所以从各个⽅向上观看图像，都有相同的亮度感。";
    return Scaffold(
      appBar: AppBar(
        title: const Text("RichText"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '富⽂本组件',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '可以容纳多种⽂字样式或各种组件的富⽂本组件，应⽤较为⼴泛。',
                  style: descStyle,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  "RichText基本使用",
                  style: titleStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  right: 10,
                ),
                child: RichText(
                  text: TextSpan(
                    children: str
                        .split("")
                        .map((str) => TextSpan(
                            text: str,
                            style: TextStyle(
                                fontSize: 15, color: ColorUtils.randomColor())))
                        .toList(),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  'RichText包含其他组件',
                  style: titleStyle,
                ),
              ),
              RichText(
                  text: TextSpan(
                      text: "Hello",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      children: [
                    WidgetSpan(
                      child: Image.asset(
                        'images/me.png',
                        width: 50,
                      ),
                      alignment: PlaceholderAlignment.baseline,
                      baseline: TextBaseline.ideographic,
                    ),
                    const TextSpan(
                      text: ' welcome to ',
                      style: descStyle,
                    ),
                    const WidgetSpan(
                        child: FlutterLogo(
                          size: 40,
                        ),
                        alignment: PlaceholderAlignment.baseline,
                        baseline: TextBaseline.ideographic),
                    const TextSpan(
                      text: ' .\n',
                    ),
                    const TextSpan(
                      text: 'follow me on ',
                      style: descStyle,
                    ),
                    const TextSpan(
                        text: "https://github.com/ycshang123",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          decoration: TextDecoration.underline,
                        )),
                    const TextSpan(text: ".\n")
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
