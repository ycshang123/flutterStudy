import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BottomSheetWidget'),
        ),
        body: Builder(
          builder: (context) {
            return Center(
              child: ElevatedButton(
                child: const Text('showBottomSheet'),
                onPressed: () {
                  Scaffold.of(context)
                      .showBottomSheet<void>((BuildContext context) {
                    return Container(
                      height: 200,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/banner2.jpg"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(45),
                            topLeft: Radius.circular(45),
                          )),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              "BottomSheet",
                              style: titleStyle,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Close BottomSheet"),
                            )
                          ],
                        ),
                      ),
                    );
                  });
                },
              ),
            );
          },
        ));
  }
}
