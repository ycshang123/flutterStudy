import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/bottom/basic_page.dart';
import 'package:flutter_demo/bottom/list_page.dart';
import 'package:flutter_demo/page/form_page.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Scaffold Page'),
        ),
        actions: const [
          Icon(Icons.share),
          SizedBox(
            width: 12.0,
          )
        ],
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          const BasicPage(),
          const FormPage(),
          const ListPage(),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: const BoxDecoration(color: Colors.lightBlueAccent),
                child: Center(
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    child: CircleAvatar(
                      child: Image.asset("images/me.png"),
                    ),
                  ),
                )),
            const ListTile(
              title: Text("订单"),
              leading: Icon(Icons.list),
            ),
            const ListTile(
              title: Text("课程"),
              leading: Icon(Icons.play_lesson),
            ),
            const ListTile(
              title: Text("设置"),
              leading: Icon(Icons.settings),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: '基础组件',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.layers,
            ),
            label: '容器布局',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
            ),
            label: '滚动组件',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.edit),
        onPressed: () {
          Navigator.pushNamed(context, '/text');
        },
      ),
    );
  }
}
