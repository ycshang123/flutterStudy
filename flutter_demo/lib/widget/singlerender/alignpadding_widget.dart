import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class AlignPaddingWidget extends StatelessWidget {
  const AlignPaddingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final alignments = [
      Alignment.topLeft,
      Alignment.topCenter,
      Alignment.topRight,
      Alignment.centerLeft,
      Alignment.center,
      Alignment.centerRight,
      Alignment.bottomLeft,
      Alignment.bottomCenter,
      Alignment.bottomRight,
    ];
    final alignmentsInfo = [
      "topLeft",
      "topCenter",
      "topRight",
      "centerLeft",
      "center",
      "centerRight",
      "bottomLeft",
      "bottomCenter",
      "bottomRight",
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Align & Padding'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '对⻬组件 Align',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '可容纳⼀个⼦组件，可以通过alignment让⼦组件定位在⽗组件宽⾼的任何指定分率。',
                  style: descStyle,
                ),
              ),
              Wrap(
                children: alignments
                    .toList()
                    .map((mode) => Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(5),
                              width: 100,
                              height: 60,
                              color: Colors.grey.withAlpha(77),
                              child: Align(
                                alignment: mode,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  color: Colors.blue.withOpacity(0.5),
                                ),
                              ),
                            ),
                            Text(alignmentsInfo[alignments.indexOf(mode)])
                          ],
                        ))
                    .toList(),
              ),
              const Text(
                "Padding",
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  "可容纳⼀个⼦组件，添加⾃身内边距来限制⼦组件的占位，核⼼属性为padding。",
                  style: descStyle,
                ),
              ),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: <Widget>[
                  Container(
                    color: Colors.blue.withAlpha(77),
                    width: 150,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 20,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.orange,
                        width: 80,
                        height: 80,
                        child: const Text('Child'),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.blue.withAlpha(77),
                    width: 150,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 30,
                        horizontal: 10,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.orange,
                        width: 80,
                        height: 80,
                        child: const Text('Child'),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.blue.withAlpha(77),
                    width: 150,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.orange,
                        width: 80,
                        height: 80,
                        child: const Text("Child"),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
