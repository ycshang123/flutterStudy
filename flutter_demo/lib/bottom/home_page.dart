import 'package:flutter/material.dart';

import '../widget/custom/hot_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: const Body(),
    );
  }

  AppBar _buildAppBar(context) {
    return AppBar(
      //导航栏阴影
      elevation: 0,
      //背景色
      backgroundColor: Colors.white,
      title: const Text(
        "首页",
        style: TextStyle(
          fontSize: 24,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      //是否居中
      centerTitle: false,
    );
  }
}

//body类
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //垂直滚动视图
    return SingleChildScrollView(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('images/banner.jpg'),
          //边距
          const SizedBox(
            height: 10,
          ),
          _buildCardRow(context),
          const Text(
            '常用组件',
            style: TextStyle(fontSize: 20),
          ),
          _buildScrollView(context),
        ],
      ),
    );
  }

//  水平卡片区域
  Row _buildCardRow(context) {
    //获取设备信息
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const <Widget>[
        SizedBox(
          width: 200,
          height: 150,
          child: Card(
            color: Color(0xffe05b48),
            //阴影
            elevation: 20,
            child: Center(
              child: Text(
                'Dart基础学习',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

//  构建水平滚动视图
  SingleChildScrollView _buildScrollView(context) {
    //滚动元素数组
    var list = [
      Info(
        width: 200.0,
        height: 120.0,
        color: Colors.green,
        title: 'Container组件',
        url: '/container',
      ),
      Info(
        width: 200.0,
        height: 120.0,
        color: Colors.pink,
        title: 'Image组件',
        url: '/image',
      ),
      Info(
        width: 200.0,
        height: 120.0,
        color: Colors.orange,
        title: 'Text组件',
        url: '/text',
      )
    ];
    //SingleChildScrollView类似于Android中的ScrollView
    return SingleChildScrollView(
      //滚动方向
      scrollDirection: Axis.horizontal,
      //渲染list
      child: Row(
        children: list
            .map(
              (e) => HotWidget(info: e),
            )
            .toList(),
      ),
    );
  }
}
