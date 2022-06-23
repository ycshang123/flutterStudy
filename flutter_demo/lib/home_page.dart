import 'package:flutter/material.dart';
import 'package:flutter_demo/switch_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("基础组件"),
        ),
        body: _buildBody(context));
  }

  ListView _buildBody(BuildContext context) {
    return ListView(children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _iconWidget(),
          const SwitchAndCheckBoxTestRoute(),
          _progressWidget(context),
        ],
      ),
    ]);
  }

  Widget _iconWidget() {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.accessible, color: Colors.green),
          Icon(Icons.error, color: Colors.green),
          Icon(Icons.fingerprint, color: Colors.green),
          Icon(MyIcons.book, color: Colors.purple),
          Icon(MyIcons.wechat, color: Colors.green),
        ],
      ),
    );
  }

//  图片
  Widget _imageWidget() {
    return Column(
      children: [],
    );
  }

  Widget _progressWidget(BuildContext context) {
    return Column(
      children: [],
    );
  }
}

class MyIcons {
  // book 图标
  static const IconData book =
      IconData(0xe632, fontFamily: 'myIcon', matchTextDirection: true);
  // 微信图标
  static const IconData wechat =
      IconData(0xe7c1, fontFamily: 'myIcon', matchTextDirection: true);
}
