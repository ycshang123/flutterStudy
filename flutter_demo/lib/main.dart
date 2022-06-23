import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo/page/button_widget.dart';
import 'package:flutter_demo/page/form_page.dart';
import 'package:flutter_demo/page/image_widget.dart';
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
        '/button': (context) => const ButtonWidget(),
        '/image': (context) => const ImageWidget(),
        '/progress': (context) => const ProgressWidget(),
        '/form': (context) => const FormPage(),
      },
      initialRoute: '/',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Index(),
    );
  }
}
