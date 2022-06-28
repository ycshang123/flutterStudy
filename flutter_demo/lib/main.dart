import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo/bottom/sample_page.dart';
import 'package:flutter_demo/sample/plant_shop.dart';
import 'package:flutter_demo/sample/timeline_page.dart';
import 'package:flutter_demo/widget/stateful/image_widget.dart';
import 'package:flutter_demo/widget/stateful/silverappbar_widget.dart';
import 'package:flutter_demo/widget/stateless/container_widget.dart';
import 'package:flutter_demo/widget/stateless/gridview_widget.dart';
import 'package:flutter_demo/widget/stateless/listview_widget.dart';
import 'package:flutter_demo/widget/stateless/progress_widget.dart';
import 'package:flutter_demo/widget/stateless/text_widget.dart';

import 'bottom/index.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  //透明沉浸式状态栏
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        '/index': (context) => const Index(),
        '/sample-page': (context) => const SamplePage(),
        // 无状态组件导航
        '/container': (context) => const ContainerWidget(),
        '/text': (context) => const TextWidget(),
        '/progress': (context) => const ProgressWidget(),
        '/listview': (context) => const ListViewWidget(),
        '/gridview': (context) => const GridViewWidget(),
        // 有状态组件导航
        '/image': (context) => const ImageWidget(),
        '/silverappbar': (context) => const SilverAppBarWidget(),
        // 示例导航
        '/plant-shop': (context) => const PlantShop(),
        '/timeline': (context) => const TimelinePage(),
      },
      initialRoute: '/',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Index(),
    );
  }
}
