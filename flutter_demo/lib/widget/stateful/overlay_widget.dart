import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class OverlayWidget extends StatelessWidget {
  const OverlayWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Overlay"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '悬浮组件',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  "'Overlay是一个Stack的widget，可以将overlayentry插入到overlay中，使独立的child窗口悬浮于其他widget之上",
                  style: descStyle,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Toast.show(context: context, message: "Toast组件");
                  },
                  child: const Text("点击弹出Toast"))
            ],
          ),
        ),
      ),
    );
  }
}

class Toast {
  static void show({required BuildContext context, required String message}) {
    // Overlay 通过把独立的 widget 插入到 overlay 的 stack 里面来实现让这个 widget 显示到其他 widget 的上面。
    //  创建一个OverlayEntry对象
    OverlayEntry overlayEntry = OverlayEntry(builder: (context) {
      //  外层使用Positioned进行定位，控制在Overlay中的位置
      return Positioned(
          top: MediaQuery.of(context).size.height * 0.5,
          child: Material(
            child: Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Center(
                child: Card(
                  color: Colors.grey.withAlpha(77),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      message,
                      style: titleStyle,
                    ),
                  ),
                ),
              ),
            ),
          ));
    });
    //往Overlay 中插入OverlayEntry
    Overlay.of(context)!.insert(overlayEntry);
    //  两秒后移除Toast
    Future.delayed(const Duration(seconds: 2)).then((value) {
      overlayEntry.remove();
    });
  }
}
