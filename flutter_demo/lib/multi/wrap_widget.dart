import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class WrapWidget extends StatelessWidget {
  WrapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '包裹布局',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '可容纳多个组件，按照指定⽅向依次排布，可以很⽅便地处理⼦组件之间的间距，越界时⾃动换⾏。拥有主轴和交叉轴的对⻬⽅式，⽐较灵活。',
                  style: descStyle,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  'Wrap基础⽤法',
                  style: titleStyle,
                ),
              ),
              Wrap(
                children: Axis.values
                    .map((e) => Column(
                          children: [
                            Container(
                                margin: const EdgeInsets.all(5),
                                width: 160,
                                height: 100,
                                color: Colors.grey.withAlpha(33),
                                child: _buildItem1(e)),
                            Text(e.toString().split('.')[1])
                          ],
                        ))
                    .toList(),
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    'Wrap的verticalDirection属性',
                    style: titleStyle,
                  )),
              Wrap(
                children: VerticalDirection.values
                    .map((e) => Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(5),
                              width: 160,
                              height: 100,
                              color: Colors.grey.withAlpha(77),
                              child: _buildItem2(e),
                            ),
                            Text(e.toString().split('.')[1])
                          ],
                        ))
                    .toList(),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  'Wrap的textDirection属性',
                  style: titleStyle,
                ),
              ),
              Wrap(
                children: TextDirection.values
                    .map((mode) => Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(5),
                              width: 160,
                              height: 100,
                              color: Colors.grey.withAlpha(77),
                              child: _buildItem3(mode),
                            ),
                            Text(mode.toString().split('.')[1])
                          ],
                        ))
                    .toList(),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  'Wrap的alignment属性',
                  style: titleStyle,
                ),
              ),
              Wrap(
                children: WrapAlignment.values
                    .map((e) => Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(5),
                              width: 160,
                              height: 100,
                              color: Colors.grey.withAlpha(77),
                              child: _buildItem4(e),
                            ),
                            Text(e.toString().split('.')[1])
                          ],
                        ))
                    .toList(),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  'Wrap的crossAxisAlignment属性',
                  style: titleStyle,
                ),
              ),
              Wrap(
                children: WrapCrossAlignment.values
                    .map((e) => Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(5),
                              width: 160,
                              height: 100,
                              color: Colors.grey.withAlpha(77),
                              child: _buildItem5(e),
                            ),
                            Text(e.toString().split('.')[1])
                          ],
                        ))
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }

  final yellowBox = Container(
    color: Colors.yellow,
    width: 50,
    height: 30,
  );
  final redBox = Container(
    color: Colors.red,
    width: 40,
    height: 40,
  );
  final greenBox = Container(
    color: Colors.green,
    width: 20,
    height: 40,
  );
  final blackBox = Container(
    color: Colors.black,
    width: 10,
    height: 10,
  );
  final purpleBox = Container(
    color: Colors.purple,
    width: 20,
    height: 20,
  );
  final orangeBox = Container(
    color: Colors.orange,
    width: 20,
    height: 40,
  );
  final blueBox = Container(
    color: Colors.blue,
    width: 20,
    height: 10,
  );

  _buildItem1(mode) => Wrap(
        direction: mode,
        runSpacing: 10,
        spacing: 10,
        children: <Widget>[
          yellowBox,
          redBox,
          greenBox,
          blueBox,
          blackBox,
          purpleBox,
          orangeBox,
        ],
      );

  _buildItem2(mode) => Wrap(
        verticalDirection: mode,
        runSpacing: 10,
        spacing: 10,
        children: <Widget>[
          yellowBox,
          redBox,
          greenBox,
          blueBox,
          blackBox,
          purpleBox,
          orangeBox,
        ],
      );

  _buildItem3(mode) => Wrap(
        textDirection: mode,
        runSpacing: 10,
        spacing: 10,
        children: <Widget>[
          yellowBox,
          redBox,
          greenBox,
          blueBox,
          blackBox,
          purpleBox,
          orangeBox,
        ],
      );

  _buildItem4(mode) => Wrap(
        alignment: mode,
        runSpacing: 10,
        spacing: 10,
        children: <Widget>[
          yellowBox,
          redBox,
          greenBox,
          blueBox,
          blackBox,
          purpleBox,
          orangeBox,
        ],
      );

  _buildItem5(mode) => Wrap(
        crossAxisAlignment: mode,
        runSpacing: 10,
        spacing: 10,
        children: [
          yellowBox,
          redBox,
          greenBox,
          blueBox,
          blackBox,
          purpleBox,
          orangeBox
        ],
      );
}
