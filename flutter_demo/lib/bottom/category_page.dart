import 'package:flutter/material.dart';
import 'package:flutter_demo/page/stateful_page.dart';
import 'package:flutter_demo/page/stateless_page.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CategoryPageState();
}

// AppBar 默认的实例,有状态
class _CategoryPageState extends State with SingleTickerProviderStateMixin {
  //顶部的循环数据
  final tabs = ['无状态', '有状态', '单渲染', '多渲染', '可折叠', '可寄居', '未分类'];
  //中间的主页面
  final tabPages = [
    const StatelessPage(),
    const StatefulPage(),
    Container(),
    Container(),
    Container(),
    Container(),
    Container()
  ];
  //为了使所选的 tab 与它所对应的内容能够同步变化
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('分类'),
        //设置背景色
        backgroundColor: Colors.indigo,
        //标题是否居中
        centerTitle: true,
        //左侧
        actions: const <Widget>[
          Icon(Icons.settings),
        ],
        bottom: _buildTabBar(),
      ),
      body: _buildTableBarView(),
    );
  }

  PreferredSizeWidget _buildTabBar() => TabBar(
        //是否可以滚动
        isScrollable: true,
        controller: _tabController,
        //底边颜色
        indicatorColor: Colors.orangeAccent,
        tabs: tabs.map((e) => Tab(text: e)).toList(),
      );

  Widget _buildTableBarView() => TabBarView(
        controller: _tabController,
        children: tabPages.map((e) => e).toList(),
      );
}
