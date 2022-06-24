import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo/bottom/sample_page.dart';
import 'package:flutter_demo/page/container_widget.dart';
import 'package:flutter_demo/page/image_widget.dart';
import 'package:flutter_demo/page/plant_shop.dart';
import 'package:flutter_demo/page/progress_widget.dart';
import 'package:flutter_demo/page/text_widget.dart';

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
        '/text': (context) => const TextWidget(),
        '/container': (context) => const ContainerWidget(),
        '/image': (context) => const ImageWidget(),
        '/progress': (context) => const ProgressWidget(),
        '/plant-shop': (context) => const PlantShop(),
        '/sample-page': (context) => const SamplePage(),
      },
      initialRoute: '/',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Index(),
    );
  }
}
