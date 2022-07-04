import 'package:flutter/material.dart';
import 'package:flutter_demo/bottom/favorite_page.dart';
import 'package:flutter_demo/bottom/sample_page.dart';

import 'category_page.dart';
import 'home_page.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  var _currentIndex = 0;

  final iconsMap = {
    "首页": Icons.home,
    "分类": Icons.category,
    "喜欢": Icons.favorite,
    "样例": Icons.book
  };

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 180,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.of(context).pushNamed("/add"),
          child: const Icon(
            Icons.add,
            size: 30,
          ),
        ),
        bottomNavigationBar: _buildBottomAppBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: IndexedStack(
          index: _currentIndex,
          children: const [
            HomePage(),
            CategoryPage(),
            FavoritePage(),
            SamplePage(),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomAppBar() {
    return BottomAppBar(
      elevation: 2,
      shape: const CircularNotchedRectangle(),
      //悬浮按钮外边距
      notchMargin: 5,
      color: Colors.indigo,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: info.asMap().keys.map((i) => _buildChild(i)).toList()
          ..insertAll(2, [const SizedBox(width: 30)]),
      ),
    );
  }

  Widget _buildChild(int i) {
    var active = i == _currentIndex;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => setState(() => _currentIndex = i),
        child: Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.center,
          children: [
            Icon(
              iconsMap[info[i]],
              color: active ? Colors.orange : Colors.white,
              size: 30,
            ),
            Text(
              info[i],
              style: TextStyle(
                  color: active ? Colors.orange : Colors.white, fontSize: 14),
            )
          ],
        ),
      ),
    );
  }

  List<String> get info => iconsMap.keys.toList();
}
