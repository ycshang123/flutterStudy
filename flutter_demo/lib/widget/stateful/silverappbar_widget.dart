import 'package:flutter/material.dart';

class SilverAppBarWidget extends StatelessWidget {
  const SilverAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              elevation: 1,
              expandedHeight: 200.0,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text("SliverAppBar"),
                background: Image.network(
                  'https://niit-soft.oss-cn-hangzhou.aliyuncs.com/banner/bg.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverFixedExtentList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Card(
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.primaries[(index % 18)],
                      child: const Text('demo'),
                    ),
                  );
                }),
                itemExtent: 80.0),
            //充满剩下的区域
            SliverFillRemaining(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Image.asset("images/dash_dart.png"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
